using api.helpers;
using api.serverEventModels;
using Fleck;
using infrastructure.Models;
using lib;
using service.services;

namespace api.clientEventHandlers;

public class ClientWantsHistoryDto : BaseDto{}

public class ClientWantsHistory : BaseEventHandler<ClientWantsHistoryDto>
{
    private readonly WaterFountainService _waterFountainService;

    public ClientWantsHistory(WaterFountainService waterFountainService)
    {
        _waterFountainService = waterFountainService;
    }
    public override Task Handle(ClientWantsHistoryDto dto, IWebSocketConnection socket)
    {
        //TODO chage to get specific users fountainId 
        FountainHistory history = _waterFountainService.getFountainHistory(1);
        
        socket.SendDto(new ServerSendsHistory
        {
            tempReadings = history.tempReadings,
            onTimeReadings = history.onTimeReadings
        });
        return Task.CompletedTask;
    }
}
