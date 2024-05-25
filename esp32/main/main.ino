
#include <PubSubClient.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include <iostream>
#include <string>  // for string and to_string()
#include "network_lib.h"
#include "motor.h"
#include "distancesensor.h"
#include "responsedto.h"
#include "timemanager.h"
#define SOUND_SPEED 0.034

const int switchpin = 4;

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

void setup() {
  Serial.begin(115200);
  pinMode(switchpin, INPUT_PULLUP);
  DS18B20.begin();  // initialize the DS18B20 sensor
}


void loop() {
  dist = distSensor.measureDistanceInCM();
  while (dist < 5) {
    motor.on();
    if (motor.ison() != isMotorOnNow) {
      statechanged("catfountain/waterstate", motor.ison());
    }
    delay(5000);
    dist = distSensor.measureDistanceInCM();
  }
  motor.off();
  if (motor.ison() != isMotorOnNow) {
    statechanged("catfountain/waterstate", motor.ison());
  }

  switchstate = digitalRead(switchpin);
  if (switchstate != stateChanged) {
    printCurrentState();
  }
  checkForButtonPress();
}

//For the button
void checkForButtonPress() {
  if (switchstate == HIGH) {
    motor.off();
    delay(300);

  } else {
    motor.on();
    delay(2000);
  }
}

void statechanged(const char* topic, bool isOn) {
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
  String statest = "\t\tState changed to: " + String(switchstate);
  client.publish("my/state", (char*)statest.c_str());
  String temp = "Temperatur: " + String(getTempperatur()) + " ";
  Serial.print("\t\tTemperature: ");
  Serial.print(tempC);  // print the temperature in °C
  Serial.print("°C\n");
  client.publish("my/state", (char*)temp.c_str());
}

void brokerConnection() {
  client.setServer(mqttServer, mqttPort);

  while (!client.connected()) {
    Serial.println("Connecting to MQTT...");

    if (client.connect("ESP32Client", mqttUser, mqttPassword)) {

      Serial.println("connected");

    } else {

      Serial.print("failed with state ");
      Serial.print(client.state());
      delay(2000);
    }

    client.publish("my/test", "Hello from ESP32");
  }
}


void sendDataToBroker(const char* topic, const char* payload) {
  //TODO when there is no wifi just run
  connectWifi(ssid, password);

  client.setServer(mqttServer, mqttPort);  // Initialisering af MQTT-server og port

  if (!client.connected()) {
    brokerConnection();
  }
  client.publish(topic, payload);  //set max size in lib if needed
  Serial.println("Dto Send");
  Serial.println("");

  WiFi.disconnect(true);
  Serial.println("Disconnected from WiFi");
}
