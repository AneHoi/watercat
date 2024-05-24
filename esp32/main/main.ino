
#include <PubSubClient.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include <iostream>
#include <string>  // for string and to_string()
#include "network_lib.h"
#include "motor.h"
#include "distancesensor.h"
#define SOUND_SPEED 0.034

const int switchpin = 4;

int switchstate = 0;
int stateChanged = 0;

const char* ssid = "Ane";
const char* password = "qwertyuiop";
const char* mqttServer = "mqtt.flespi.io";
const int mqttPort = 1883;
const char* mqttUser = "FlespiToken R7ioy0LLhLzMw0pAUsadQ5tH67LS44a4ne21Uc5g3x80x44t7WIyab0GQ9XkFuFP";
const char* mqttPassword = "";


const int tempsensor = 13;
OneWire oneWire(tempsensor);
DallasTemperature DS18B20(&oneWire);

float tempC;  // temperature in Celsius

WiFiClient espClient;
PubSubClient client(espClient);

//The motor instance
const int motorpin = 12;
Motor motor(motorpin);

//The distance sensor
const int distSensorEcho = 14;
const int distSensorTrig = 15;
DistanceSensor distSensor(distSensorEcho, distSensorTrig);

void setup() {
  Serial.begin(115200);
  connectWifi(ssid, password);
  brokerConnection();

  pinMode(switchpin, INPUT_PULLUP);
  //pinMode(distSensorTrig, OUTPUT);  // Sets the trigPin as an Output
  //pinMode(distSensorEcho, INPUT);   // Sets the echoPin as an Input
  DS18B20.begin();  // initialize the DS18B20 sensor
}


void loop() {
  float dist = distSensor.measureDistanceInCM();
  Serial.println("dist: " + String(dist) + " cm");
  switchstate = digitalRead(switchpin);
  if (switchstate != stateChanged) {

    stateChanged = switchstate;
    bool ison = motor.ison();
    Serial.println("State changed to " + String(ison));
    String statest = "state changed to: " + String(switchstate);
    client.publish("my/state", (char*)statest.c_str());
    String temp = getTempperatur() + " ";
    //client.publish("my/state", (char*)temp.c_str());
  }
  if (switchstate == HIGH) {
    motor.on();
    delay(100);

  } else {
    motor.off();
    delay(100);
  }
}

int getTempperatur() {
  DS18B20.requestTemperatures();       // send the command to get temperatures
  tempC = DS18B20.getTempCByIndex(0);  // read temperature in °C

  Serial.print("Temperature: ");
  Serial.print(tempC);  // print the temperature in °C
  Serial.print("°C\n");
  return tempC;
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