using System.ComponentModel.DataAnnotations;
using System.Reflection;
using System.Security.Authentication;
using api.helpers;
using api.mqttEventListeners;
using api.serverEventModels;
using api.WebSocket;
using Fleck;
using infrastructure;
using lib;
using service.services;

public static class Startup
{
    public static void Main(string[] args)
    {
        var app = Start(args);
        app.Run();
    }

    public static WebApplication Start(string[] args)
    {
        var builder = WebApplication.CreateBuilder(args);

        //saves connection string
        //gets connection string to db
        builder.Services.AddNpgsqlDataSource(Utilities.ProperlyFormattedConnectionString);

        builder.Services.AddSingleton(provider => Utilities.ProperlyFormattedConnectionString);

        builder.Services.AddSingleton<WaterfountainRepository>();
        builder.Services.AddSingleton<PasswordHashRepository>();
        builder.Services.AddSingleton<UserRepository>();

        builder.Services.AddSingleton<WaterFountainService>();
        builder.Services.AddSingleton<AuthService>();
        builder.Services.AddSingleton<TokenService>();

        builder.Services.AddSingleton<DeviceReadingsService>();
        builder.Services.AddSingleton<MqttClientSubscriber>();

        // Add services to the container.
        var services = builder.FindAndInjectClientEventHandlers(Assembly.GetExecutingAssembly());


        builder.WebHost.UseUrls("http://*:9999");

        var app = builder.Build();

        var port = Environment.GetEnvironmentVariable("PORT") ?? "8080";
        var server = new WebSocketServer("ws://0.0.0.0:" + port);
        server.RestartAfterListenError = true;

        server.Start(socket =>
        {
            socket.OnOpen = () => StateService.AddClient(socket.ConnectionInfo.Id, socket);
            socket.OnClose = () => StateService.RemoveClient(socket.ConnectionInfo.Id);
            socket.OnMessage = async message =>
            {
                try
                {
                    await app.InvokeClientEventHandler(services, socket, message);
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                    //error handler
                    //todo should have a logger that logs the error so we can se it when deployed 
                    if (app.Environment.IsProduction() && (e is ValidationException || e is AuthenticationException))
                    {
                        socket.SendDto(new ServerSendsErrorMessageToClient()
                        {
                            errorMessage = "Something went wrong",
                            receivedMessage = message
                        });
                    }
                    else
                    {
                        socket.SendDto(new ServerSendsErrorMessageToClient
                            { errorMessage = e.Message, receivedMessage = message });
                    }
                }
            };
        });
        app.Services.GetService<MqttClientSubscriber>()?.CommunicateWithBroker();
        return app;
    }
}