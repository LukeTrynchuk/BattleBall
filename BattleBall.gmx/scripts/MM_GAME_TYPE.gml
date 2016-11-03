///MM_GAME_TYPE()
GetClassInput();

if((up || down) && CanSwitchClass)
{
    var chooseDirection = -1;                                                                            //The direcitonal change
    if(down) chooseDirection = 1;                                                                      //Change the direction
    
    Current_Option += chooseDirection;                                                         //Set the change
    
    if(Current_Option >= array_length_1d(Game_Type_Options)) Current_Option = 0;        //Allow for upward movement
    if(Current_Option < 0) Current_Option = array_length_1d(Game_Type_Options) - 1;     //Allow for downward movement
    
    Reset_Menu_Timer();                                                                                 //Reest the timer
}
else if (confirm)
{
    switch(Current_Selected_Option)                                                                     //Switch based on the current option selected
    {
        case 0:
            MM_LAN_1V1();                           //Play 1v1 over LAN                                                                       //Code for the play game option
            break;
    }
    
    Reset_Menu_Timer();                                                                                 //Reset the timer
}
