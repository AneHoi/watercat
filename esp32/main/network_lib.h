#ifndef NETWORK_LIBRARY_H
#define NETWORK_LIBRARY_H


#include <PubSubClient.h>
#include <WiFi.h>
#include <Arduino.h>

void connectWifi(const char* ssid, const char* password);
PubSubClient connectBroker(PubSubClient client, const char* mqttServer, const int mqttPort, const char* mqttUser, const char* mqttPassword);

#endif