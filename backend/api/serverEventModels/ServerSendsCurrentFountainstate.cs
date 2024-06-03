using lib;

namespace api.serverEventModels;

public class ServerSendsCurrentFountainstate : BaseDto
{
    public bool? isOn { get; set; }
}