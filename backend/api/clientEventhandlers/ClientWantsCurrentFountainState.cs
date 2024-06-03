using api.helpers;
using api.serverEventModels;
using Fleck;
using infrastructure.Models;
using lib;
using service.services;

namespace api.clientEventHandlers;

public class ClientWantsCurrentFountainStateDto : BaseDto
{
    public string email { get; set; }
    
}
public class ClientWantsCurrentFountainState : BaseEventHandler<ClientWantsCurrentFountainStateDto>
{
    private readonly WaterFountainService _waterFountainService;

    public ClientWantsCurrentFountainState(WaterFountainService waterFountainService)
    {
        _waterFountainService = waterFountainService;
    }
    
    public override Task Handle(ClientWantsCurrentFountainStateDto dto, IWebSocketConnection socket)
    {
        //sends the JWT token to the client
        WaterFountainstate state = _waterFountainService.getCurrentWaterFountainstate();
        
        Console.WriteLine(dto.email + " and state is: " + state.ison);

        socket.SendDto(new ServerSendsCurrentFountainstate
        {
            isOn = state.ison
        });
        return Task.CompletedTask;
    }
}