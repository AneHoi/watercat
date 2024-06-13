using infrastructure;
using infrastructure.Models;

namespace service.services;

public class WaterFountainService
{
    private readonly WaterfountainRepository _waterfountainRepository;

    public WaterFountainService(
        WaterfountainRepository waterfountainRepository){
        _waterfountainRepository = waterfountainRepository;
    }

    public WaterFountainstate getCurrentWaterFountainstate()
    {
        return _waterfountainRepository.getCurrentWaterFountainstate();
    }

    public void addFountaindata(WaterFountainstateDtoToDB waterFountainstate)
    {
        _waterfountainRepository.setWaterFountainState(waterFountainstate);
    }

    public FountainHistory getFountainHistory(int deviceId)
    {
        FountainHistory fountainHistory = new FountainHistory();
        var historyTimeList = new List<Reading>();
        var historyOnTime = _waterfountainRepository.getHistoryOnTime(deviceId);
        //takes in the times it has been turned on and off and calculates, how long it has been on
        foreach (var onTimes in historyOnTime)
        {
            historyTimeList.Add(new Reading
            {
                value = onTimes.isOn ? 1.0 : 0.0,
                timestamp = onTimes.timestamp
            });
            Console.WriteLine(onTimes.timestamp + " isOn: " + onTimes.isOn);
        }

        var historyTemperatures = new List<Reading>();
        var historyOnTemperatures = _waterfountainRepository.GetHistoryTemperature(deviceId);
        //takes in the times it has been turned on and off and calculates, how long it has been on
        foreach (var temperatures in historyOnTemperatures)
        {
            historyTemperatures.Add(new Reading
            {
                value = temperatures.temperatur, 
                timestamp = temperatures.timestamp
            });
            Console.WriteLine("temperature: " + temperatures.temperatur);
        }
        
        fountainHistory.onTimeReadings = historyTimeList;
        fountainHistory.tempReadings = historyTemperatures;
        return fountainHistory;
    }
}