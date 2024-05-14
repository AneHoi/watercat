using lib;

namespace api.serverEventModels;

public class ServerSendsEditedName : BaseDto
{
    public string firstname { get; set; }
    public string lastname { get; set; }
}

public class ServerSendsEditedPhoneNumber : BaseDto
{
    public string phoneNumber { get; set; }
}
public class ServerSendsEditedEmail : BaseDto
{
    public string email { get; set; }
}