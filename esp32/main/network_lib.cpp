#include "network_lib.h"

void connectWifi(const char* ssid, const char* password) {
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi..");
  }

  Serial.println("Connected to the WiFi network");
}

void sendDto(String topic, bool isOn, float tempC, float distanceCm){

}

/* TODO Not working do not know why
PubSubClient connectBroker(PubSubClient client, const char* mqttServer, const int mqttPort, const char* mqttUser, const char* mqttPassword) {
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
    return client;
  }
}
*/
