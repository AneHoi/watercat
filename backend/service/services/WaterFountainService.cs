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
}