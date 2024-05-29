using api.helpers;
using Fleck;
using infrastructure;
using lib;
using service.services;

namespace api.clientEventHandlers;

public class ClientWantsAllUsersDto : BaseDto
{
    
}
public class ClientWantsAllUsers : BaseEventHandler<ClientWantsAllUsersDto>
{
    private readonly AuthService _authService;

    public ClientWantsAllUsers(AuthService authService)
    {
        _authService = authService;
    }
    
    public override Task Handle(ClientWantsAllUsersDto dto, IWebSocketConnection socket)
    {
        var envvar = Environment.GetEnvironmentVariable(EnvVarKeys.pgconn.ToString());
        Console.WriteLine("envvar: " + envvar);
        _authService.tetingDb();
        
        var users = _authService.GetUsers();
        socket.SendDto(new ServerSendsAllUsers
        {
            users = users
        });
        
        return Task.CompletedTask;
    }
}


public class ServerSendsAllUsers : BaseDto
{
    public List<Emailform> users { get; set; }
}