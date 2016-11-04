///Num_Controllers_Connected()
var Num_Connected = 0;

for(var i = 0; i < 5; i++)
{
    if(gamepad_is_connected(i)) Num_Connected++;
}
return Num_Connected;
