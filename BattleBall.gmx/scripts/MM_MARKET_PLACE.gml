///MM_MARKET_PLACE()
GetClassInput();                                                                                //Get the input
if((up || down) && CanSwitchClass)                                                              //If the player is changing the selection
{
    var LastItem = Current_Crate_Option;
    var chooseDirection = -1;                                                                   //Set the direction
    if(down) chooseDirection = 1;                                                               //Change the direction
    
    Current_Crate_Option += chooseDirection;                                                          //Increment by the direction
    Current_Crate_Option = clamp(Current_Crate_Option, 0, array_length_1d(Crate_Sprite) - 1);                 //Current levels
    if(LastItem != Current_Crate_Option) Playhit(snd_Switch, audio_em);
    Reset_Menu_Timer();                                                                         //Reset the timer
}
else if (confirm)                                                                               //If the player is going confirming
{
    MM_MARKET_PLACE_CONFIRM();
    Reset_Menu_Timer();                                                                         //Reset the timer
}
else if (back)                                                                                  //If the player is going back
{
    MM_MARKET_PLACE_BACK();                                                                     //Execute the back code
    Reset_Menu_Timer();
}
