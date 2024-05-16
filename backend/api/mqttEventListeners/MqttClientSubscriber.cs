using System.Text.Json;
using Fleck;
using infrastructure.Models;
using MQTTnet;
using MQTTnet.Client;
using MQTTnet.Formatter;
using service.services;

namespace api.mqttEventListeners;

public class MqttClientSubscriber
{
    private DeviceReadingsService _readingsService;
    
    public MqttClientSubscriber(DeviceReadingsService readingsService)
    {
        _readingsService = readingsService;
    }
    
    
    
    public async Task CommunicateWithBroker()
    {

        var mqttFactory = new MqttFactory();
        var mqttClient = mqttFactory.CreateMqttClient();
        
        var mqttClientOptions = new MqttClientOptionsBuilder()
            .WithTcpServer("mqtt.flespi.io", 1883)
            .WithProtocolVersion(MqttProtocolVersion.V500)
            .WithCredentials("FlespiToken R7ioy0LLhLzMw0pAUsadQ5tH67LS44a4ne21Uc5g3x80x44t7WIyab0GQ9XkFuFP", "") // todo should be a secret
            .Build();

        await mqttClient.ConnectAsync(mqttClientOptions, CancellationToken.None);

        var mqttSubscribeOptions = mqttFactory.CreateSubscribeOptionsBuilder()
            .WithTopicFilter(f => f.WithTopic("test/#"))
            .Build();

        await mqttClient.SubscribeAsync(mqttSubscribeOptions, CancellationToken.None);

        mqttClient.ApplicationMessageReceivedAsync += async e =>
        {
            try
            {
                var message = e.ApplicationMessage.ConvertPayloadToString();
           
                var messageObject = JsonSerializer.Deserialize<DeviceData>(message);

                //TODO remove
                Console.WriteLine("messageObject");
                _readingsService.CreateReadings(messageObject);
                
                //todo check for current listeners in state service and call relevant server to client handlers
                var pongMessage = new MqttApplicationMessageBuilder()
                    .WithTopic("response_topic")//todo do we want some confirm? 
                    .WithPayload("yes we received the message, thank you very much, " +
                                 "the websocket client(s) also has the data")
                    .WithQualityOfServiceLevel(e.ApplicationMessage.QualityOfServiceLevel)
                    .WithRetainFlag(e.ApplicationMessage.Retain)
                    .Build();
                await mqttClient.PublishAsync(pongMessage, CancellationToken.None);
            }
            catch (Exception exc)
            {
                throw new ConnectionNotAvailableException("could not get data from Mqtt Broker", exc);
            }
        };
    }
}


