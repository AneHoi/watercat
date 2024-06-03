
#include <PubSubClient.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include <iostream>
#include <string>  // for string and to_string()
#include <LiquidCrystal_I2C.h>

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

//The motor instance
bool isMotorOnNow = false;
const int motorpin = 12;
Motor motor(motorpin);

//The distance sensor
float dist = 0;
const int distSensorEcho = 14;
const int distSensorTrig = 15;
DistanceSensor distSensor(distSensorEcho, distSensorTrig);

// set the LCD number of columns and rows
int lcdColumns = 16;
int lcdRows = 2;

// set LCD address, number of columns and rows
// if you don't know your display address, run an I2C scanner sketch
LiquidCrystal_I2C lcd(0x27, lcdColumns, lcdRows);

void setup() {
  Serial.begin(115200);
  // initialize LCD
  lcd.init();
  // turn on LCD backlight
  lcd.backlight();
  pinMode(switchpin, INPUT_PULLUP);
  pinMode(waterpin, INPUT_PULLUP);
  DS18B20.begin();  // initialize the DS18B20 sensor
}


void loop() {
  //Keeps connection open, for incomming brokermessages
    if (!client.connected()) {
      connectToBroker();
    }
    client.loop();
  //Make sure, there is water
  if (digitalRead(waterpin) == HIGH) {
    lcd.clear();
    lcd.setCursor(0, 0);
    // print message to LCD
    lcd.print("Not enough water");
    //Todo Send message to broker
    client.publish("my/state", "not enoungh water");
    sendDataToBroker("my/state", "not enough water");
    
  } else {
    lcd.clear();
    dist = distSensor.measureDistanceInCM();
    while ((dist < 5) && (digitalRead(waterpin) == LOW)) {
      motor.on();
      if (motor.ison() != isMotorOnNow) {
        // set cursor to first column, first row
        lcd.setCursor(0, 0);
        // print message
        lcd.print("Waterpump: on");
        // set cursor to first column, first row
        lcd.setCursor(0, 1);
        // print message
        lcd.print("Temp: " + String(getTempperatur()) + " C");
        if (digitalRead(waterpin) == LOW) {
          Serial.println("waterstate is low and good");
        }


        statechanged("catfountain/waterstate", motor.ison());

        String temp = "Temperatur: " + String(getTempperatur()) + "State changed to: on";
        sendDataToBroker("my/state", (char*)temp.c_str());
      }
      //delay(5000);
      dist = distSensor.measureDistanceInCM();
    }
    motor.off();
    if (motor.ison() != isMotorOnNow) {
      statechanged("catfountain/waterstate", motor.ison());
      // clears the display to print new message
      lcd.clear();

      String temp = "Temperatur: " + String(getTempperatur()) + "State changed to: " + String(switchstate) + " ";
      sendDataToBroker("my/state", (char*)temp.c_str());
    }

    switchstate = digitalRead(switchpin);
    if (switchstate != stateChanged) {
      printCurrentState();
    }
    checkForButtonPress();
    checkForfloating();
  }
}

//For the floating sensor
void checkForfloating() {
  if (digitalRead(waterpin) == HIGH) {
    lcd.clear();
    lcd.setCursor(0, 0);
    // print message
    lcd.print("Not enough water");
    //Todo Send message to broker
    sendDataToBroker("my/state", "not enough water");
  } else {
  }
}
//For the button
void checkForButtonPress() {
  if (switchstate == HIGH) {
    motor.off();

  } else {
    motor.on();
  }
}

void statechanged(const char* topic, bool isOn) {
  isMotorOnNow = isOn;
  std::string currentTime = timeManager.getCurrentTime();  //gets current real time
  SensorDto temperatureReading;
  temperatureReading.Value = tempC;
  temperatureReading.TimeStamp = currentTime;
  readings.Temperatures.push_back(temperatureReading);
  //Just adding one more for testdata
  SensorDto temperatureReadingto;
  temperatureReadingto.Value = tempC;
  temperatureReadingto.TimeStamp = currentTime;
  readings.Temperatures.push_back(temperatureReadingto);

  //Topic is ready, we create the payload to send the object
  DeviceData deviceData(deviceId, readings);
  std::string jsonString = deviceData.toJsonString();
  Serial.print(topic);
  sendDataToBroker(topic, jsonString.c_str());
}

float getTempperatur() {
  DS18B20.requestTemperatures();       // send the command to get temperatures
  tempC = DS18B20.getTempCByIndex(0);  // read temperature in °C
  return tempC;
}

void printCurrentState() {
  bool ison = motor.ison();
  Serial.print("Distance: " + String(dist) + " cm\t\t");
  Serial.print("State changed to " + String(ison));
  Serial.print("\t\tTemperature: ");
  Serial.print(String(getTempperatur()));  // print the temperature in °C
  Serial.print("°C\n");
}

//For publishing
void sendDataToBroker(const char* topic, const char* payload) {
  connectToBroker();
  bool sucess = client.publish(topic, payload);
  if (sucess) {
    Serial.println("Sucess");
  }
  Serial.println("Data sent");

  WiFi.disconnect(true);
  Serial.println("Disconnected from WiFi");
}


void connectToBroker() {
  // Ensure WiFi is connected
  if (WiFi.status() != WL_CONNECTED) {
    connectWifi(ssid, password);
  }

  // Connect to the MQTT broker
  client.setServer(mqttServer, mqttPort);
  client.setCallback(callback);

  while (!client.connected()) {
    Serial.println("Connecting to MQTT...");

    if (client.connect("ESP32Client", mqttUser, mqttPassword)) {
      Serial.println("connected");

      //Setting the subscribe topic
      client.subscribe("my/state");

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

  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
    // delay(1000);
  }
  Serial.println();
}
