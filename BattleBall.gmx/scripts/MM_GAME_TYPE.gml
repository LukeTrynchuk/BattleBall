///MM_GAME_TYPE()
GetClassInput();                                                                                //Get the input

if((up || down) && CanSwitchClass)                                                              //If the player is changing the selection
{
    var chooseDirection = -1;                                                                   //Set the direction
    if(down) chooseDirection = 1;                                                               //Change the direction
    
    Current_Game_Type += chooseDirection;                                                    //Increment by the direction
    
    if(Current_Game_Type >= array_length_1d(MM_GAME_TYPES)) Current_Game_Type = 0;            //Clamp
    if(Current_Game_Type < 0) Current_Game_Type = array_length_1d(MM_GAME_TYPES) - 1;         //Clamp
    
    Reset_Menu_Timer();                                                                         //Reset the timer
}
else if (confirm)                                                                               //If the player is going confirming
{
    MM_GAME_TYPE_CONFIRM();                                                                  //Execute confirm code
    Reset_Menu_Timer();                                                                         //Reset the timer
}
else if (back)                                                                                  //If the player is going back
{
    MM_GAME_TYPE_BACK();                                                                     //Execute the back code
    Reset_Menu_Timer();
}
