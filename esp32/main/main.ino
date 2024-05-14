#include <WiFi.h>
#include <PubSubClient.h>

const int switchpin = 4;
const int motorpin = 12;

//fo arduino
//const int switchpin = 2;
//const int motorpin = 9;
int switchstate = 0;
int stateChanged = 0;

const char* ssid = "Ane";
const char* password = "qwertyuiop";
const char* mqttServer = "mqtt.flespi.io";
const int mqttPort = 1883;
const char* mqttUser = "FlespiToken R7ioy0LLhLzMw0pAUsadQ5tH67LS44a4ne21Uc5g3x80x44t7WIyab0GQ9XkFuFP";
const char* mqttPassword = "";



void setup() {
  Serial.begin(9600);
  connectWifi();
  connectBroker();
  pinMode(motorpin, OUTPUT);
  pinMode(switchpin, INPUT_PULLUP);
}
void connectWifi() {
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.println("Connecting to WiFi..");
  }

  Serial.println("Connected to the WiFi network");
}

void connectBroker(){
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
  }

  client.publish("my/test", "Hello from ESP32");
}


void loop() {
  switchstate = digitalRead(switchpin);
  if (switchstate != stateChanged) {
    stateChanged = stateChanged;
    Client.publish("my/state", "state changed")
  }
  if (switchstate == HIGH) {
    Serial.println("High + OFF");
    digitalWrite(motorpin, LOW);¨

    delay(100);
  } else {
    Serial.println("Low + ON");
    digitalWrite(motorpin, HIGH);
    delay(100);
  }
}
