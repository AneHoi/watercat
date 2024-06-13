
#include <PubSubClient.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include <iostream>
#include <string>  // for string and to_string()
#include <LiquidCrystal_I2C.h>
#include <iostream>
#include <ctime>

#include "network_lib.h"
#include "motor.h"
#include "distancesensor.h"
#include "responsedto.h"
#include "timemanager.h"
#define SOUND_SPEED 0.034

const int switchpin = 4;
const int waterpin = 36;

int switchstate = 0;
int stateChanged = 0;

//Temperature sensor
float tempC;  // temperature in Celsius
const int tempsensor = 13;
OneWire oneWire(tempsensor);
DallasTemperature DS18B20(&oneWire);
float maxRuntemp = 30.0;
bool acceptableTemp = true;

//Wifi and broker connection
const char* ssid = "Ane";
const char* password = "qwertyuiop";
const char* mqttServer = "mqtt.flespi.io";
const int mqttPort = 1883;
const char* mqttUser = "FlespiToken R7ioy0LLhLzMw0pAUsadQ5tH67LS44a4ne21Uc5g3x80x44t7WIyab0GQ9XkFuFP";
const char* mqttPassword = "";


const int deviceId = 1;
DeviceReadingsDto readings;
TimeManager timeManager(ssid, password);


WiFiClient espClient;
PubSubClient client(espClient);

unsigned long startMillis;
unsigned long currentMillis;

//The motor instance
long onTimeForMotor = 10000;  //In milliseconds
bool isMotorOnNow = false;
const int motorpin = 12;
Motor motor(motorpin);

//The distance sensor
const int distSensorEcho = 14;
const int distSensorTrig = 15;
DistanceSensor distSensor(distSensorEcho, distSensorTrig);

// set the LCD number of columns and rows
int lcdColumns = 16;
int lcdRows = 2;

// set LCD address, number of columns and rows
// if you don't know your display address, run an I2C scanner sketch
LiquidCrystal_I2C lcd(0x27, lcdColumns, lcdRows);

bool acceptableWaterstate = true;

void setup() {
  Serial.begin(115200);
  // initialize LCD
  lcd.init();
  // turn on LCD backlight
  lcd.backlight();
  printToLCD("Device on", 0);
  printToLCD("Searching Wifi", 1);

  timeManager.begin();
  pinMode(switchpin, INPUT_PULLUP);
  pinMode(waterpin, INPUT_PULLUP);
  DS18B20.begin();         // initialize the DS18B20 sensor
  startMillis = millis();  //initial start time
}


void loop() {
  //Keeps connection open, for incomming brokermessages
  if (!client.connected()) {
    connectToBroker();
  }
  client.loop();


  //Make sure, there is water
  if (digitalRead(waterpin) == HIGH) {
    if (motor.ison()) {
      turnOffMotor();
    }
    //Todo Send message to broker
    if (acceptableWaterstate) {
      lcd.clear();
      acceptableWaterstate = false;
      sendDataToBroker("catfountain/waterstate", "Not enough water");
      printToLCD("Not enough water", 0);
    }
    delay(500);
  }
  //Make sure the water temp is not too high
  else if (getTempperatur() > maxRuntemp) {
    if (motor.ison()) {
      turnOffMotor();
    }
    if (acceptableTemp) {
      lcd.clear();
      acceptableTemp = false;
      sendDataToBroker("catfountain/waterstate", "Water is too hot");
      printToLCD("Water is too hot", 0);
    }
    delay(500);
    printToLCD(String(getTempperatur()), 1);
  } else if (getTempperatur() < -30.0) {
    if (motor.ison()) {
      turnOffMotor();
    }
    if (acceptableTemp) {
      lcd.clear();
      acceptableTemp = false;
      sendDataToBroker("catfountain/waterstate", "Temperature sensor failiure");
      printToLCD("Temperature sensor failiure", 0);
    }
    delay(500);
    printToLCD(String(getTempperatur()), 1);
  }

  else {
    if (!acceptableWaterstate) {
      lcd.clear();
      acceptableWaterstate = true;
    }
    if (!acceptableTemp) {
      lcd.clear();
      acceptableTemp = true;
    }

    switchstate = digitalRead(switchpin);
    //Monitor the cats distance to the device and listen for buttonpres

    if (distSensor.measureDistanceInCM() < 5 || switchstate == LOW) {
      turnOnMotor();
    }
  }
  currentMillis = millis();  //get the current "time" (The number of milliseconds since the program started)

  //If motor is turned on and, it has been for the value of onTimeForMotor, then turn off
  if (currentMillis - startMillis >= onTimeForMotor && motor.ison()) {
    turnOffMotor();
  }
}
void turnOffMotor() {
  motor.off();
  lcd.clear();
  printToLCD("Waterpump: off", 0);
  printToLCD("Temp: " + String(getTempperatur()) + " C", 1);
  statechanged("catfountain/waterstate", motor.ison());
  startMillis = currentMillis;
}
void turnOnMotor() {
  motor.on();
  startMillis = currentMillis;
  if (motor.ison() != isMotorOnNow) {
    lcd.clear();
    printToLCD("Waterpump: on", 0);
    printToLCD("Temp: " + String(getTempperatur()) + " C", 1);
    statechanged("catfountain/waterstate", motor.ison());
  }
}
void printToLCD(String message, int displaycolum) {
  lcd.setCursor(0, displaycolum);
  // print message to LCD
  lcd.print(message);
}


void statechanged(const char* topic, bool isOn) {
  isMotorOnNow = isOn;
  std::string currentTime = timeManager.getCurrentTime();  //gets current real time

  SensorDto temperatureReading;
  temperatureReading.MotorValue = isOn;
  temperatureReading.TemperatureValue = tempC;
  temperatureReading.TimeStamp = currentTime;
  //Add the reading
  readings.DeviceData.push_back(temperatureReading);

  //Topic is ready, here we create the payload to send the object
  DeviceData deviceData(deviceId, readings);
  std::string jsonString = deviceData.toJsonString();

  //TODO remove later

  Serial.print("Sending from: ");
  Serial.print(topic);
  Serial.print(" payload: ");
  Serial.print(jsonString.c_str());
  Serial.println("");
  sendDataToBroker(topic, jsonString.c_str());
  //clear all readings
  readings.DeviceData.clear();
}

float getTempperatur() {
  DS18B20.requestTemperatures();       // send the command to get temperatures
  tempC = DS18B20.getTempCByIndex(0);  // read temperature in °C
  return tempC;
}

//For publishing
void sendDataToBroker(const char* topic, const char* payload) {
  client.publish(topic, payload);
}

void connectToBroker() {
  // Ensure WiFi is connected
  if (WiFi.status() != WL_CONNECTED) {
    lcd.clear();
    printToLCD("Connect to WiFi", 0);
    connectWifi(ssid, password);
    lcd.clear();
  }

  // Connect to the MQTT broker
  client.setServer(mqttServer, mqttPort);
  client.setCallback(callback);

  while (!client.connected()) {
    Serial.println("Connecting to MQTT...");

    if (client.connect("ESP32Client", mqttUser, mqttPassword)) {
      Serial.println("connected");

      //Setting the subscribe topic
      client.subscribe("catfountain/clientrequests");

    } else {
      Serial.print("failed with state ");
      Serial.print(client.state());
      delay(2000);
    }
  }
}

// For subscribing
void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("]: ");

  // Convert byte* to char*
  char* str = reinterpret_cast<char*>(payload);

  // Convert the string to an integer using std::atoi
  int secunds = std::atoi(str);
  Serial.print(secunds);
  onTimeForMotor = secunds * 1000;
  turnOnMotor();
  Serial.print("turned");
}
