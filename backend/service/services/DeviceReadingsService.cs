using System.Data.SqlTypes;
using infrastructure.Models;

namespace service.services;

public class DeviceReadingsService
{
    public DeviceReadingsService()
    {
    }

    public void CreateReadings(DeviceWaterData deviceReadingsDto)
    {
        var deviceId = deviceReadingsDto.DeviceId;
        //TODO remove
        Console.WriteLine("recieved");
        Console.WriteLine("Data: " + deviceReadingsDto.Data.Length);

        if (deviceReadingsDto.Data.Any())
        {
            Console.WriteLine("Data: " + deviceReadingsDto.Data.Length);
            //_humidityRepository.SaveHumidityList(deviceId, deviceReadingsDto.Data.Humidities
        }
        else
            throw new NullReferenceException("there is no humidity readings in dataset");
    }

    public bool DeleteAllReadings(int deviceId)
    {
        /*
         var wasHumidityDeleted = _humidityRepository.DeleteHumidityReadings(deviceId);
        if (!wasHumidityDeleted)
            throw new SqlTypeException("Failed to delete humidity readings");

        var wasTemperatureDeleted = _temperatureRepository.DeleteTemperatureReadings(deviceId);
        if (!wasTemperatureDeleted)
            throw new SqlTypeException("Failed to delete temperature readings");

        var wasParticle25Deleted = _particlesRepository.DeleteParticle25(deviceId);
        if (!wasParticle25Deleted)
            throw new SqlTypeException("Failed to delete particle 2.5 readings");

        var wasParticle100Deleted = _particlesRepository.DeleteParticle100(deviceId);
        if (!wasParticle100Deleted)
            throw new SqlTypeException("Failed to delete particle 10.0 readings");
                 */
        return true;
    }
}