///MM_LEVEL_SELECT()
GetClassInput();                                                                                //Get the input

if((up || down) && CanSwitchClass)                                                              //If the player is changing the selection
{
    var LastItem = Selected_Level;
    var chooseDirection = -1;                                                                   //Set the direction
    if(down) chooseDirection = 1;                                                               //Change the direction
    
    Selected_Level += chooseDirection;                                                          //Increment by the direction
    Selected_Level = clamp(Selected_Level, 0, array_length_1d(Current_Levels) - 1);                 //Current levels
    if(LastItem != Selected_Level) Playhit(snd_Switch, audio_em);
    Reset_Menu_Timer();                                                                         //Reset the timer
}
else if (confirm)                                                                               //If the player is going confirming
{
    MM_LEVEL_SELECT_CONFIRM();
    Reset_Menu_Timer();                                                                         //Reset the timer
}
else if (back)                                                                                  //If the player is going back
{
    MM_LEVEL_SELECT_BACK();                                                                     //Execute the back code
    Reset_Menu_Timer();
}
