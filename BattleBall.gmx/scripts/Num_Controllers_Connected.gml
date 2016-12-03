///Num_Controllers_Connected()
var Num_Connected = 0;                              //The number of connected devices

for(var i = 0; i < 5; i++)                          //Loop through all the ports
{
    if(gamepad_is_connected(i)) Num_Connected++;    //If a device is connected then increment the number of connected devices
}
return Num_Connected;                               //Return the number of connected devices
