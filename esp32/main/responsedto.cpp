
#include "responsedto.h"

// Constructor definition
DeviceData::DeviceData(int deviceId, const DeviceReadingsDto& data) : deviceId(deviceId), data(data) {}

// Method to convert device data to JSON string
std::string DeviceData::toJsonString() const {
    std::stringstream ss;
    ss << "{\n";
    ss << "  \"DeviceId\": " << deviceId << ",\n";
    ss << "  \"Data\": {\n";
    ss << "    \"Temperatures\": [\n";
    serializeSensorArray(ss, data.Temperatures);
    ss << "    ],\n";
    ss << "    \"Motorstates\": [\n";
    serializeSensorArray(ss, data.Motorstates);
    ss << "    ],\n";
    ss << "  }\n";
    ss << "}\n";
    return ss.str();
}

// Helper method to serialize sensor array to JSON format
void DeviceData::serializeSensorArray(std::stringstream& ss, const std::vector<SensorDto>& sensors) const {
    bool isFirst = true;
    for (const auto& sensor : sensors) {
        if (!isFirst) {
            ss << ",\n";
        }
        isFirst = false;
        ss << "      {\n";
        ss << "        \"Value\": " << sensor.Value << ",\n";
        ss << "        \"TimeStamp\": \"" << sensor.TimeStamp << "\"\n";
        ss << "      }";
    }
    ss << "\n";
}