///MM_MAIN()
GetClassInput();

if((up || down) && CanSwitchClass)
{
    var chooseDirection = -1;                                                                            //The direcitonal change
    if(down) chooseDirection = 1;                                                                      //Change the direction
    
    var LastItem = Current_Selected_Option;
    Current_Selected_Option += chooseDirection;                                                         //Set the change
    Current_Selected_Option = clamp(Current_Selected_Option, 0, array_length_1d(MM_MENU_OPTIONS) - 1);  //Clamp the values 
    if(LastItem != Current_Selected_Option) Playhit(snd_Switch, audio_em);
    Reset_Menu_Timer();                                                                                 //Reest the timer
}
else if (confirm && CanSwitchClass)
{
    switch(Current_Selected_Option)                                                                     //Switch based on the current option selected
    {
        case 0:
            MM_MENU_PLAY_GAME();                                                                        //Code for the play game option
            break;
        case 1:
            MM_MENU_EDIT_CLASS();                                                                       //Code for the edit class option
            break;
        case 2 :
            MM_MENU_MARKET_PLACE();                                                                     //Code for the market place option
            break;
        case 3:
            MM_MENU_QUIT();                                                                             //Code for the quit option
            break;
    }
    Playhit(snd_fight, audio_em);
    Reset_Menu_Timer();                                                                                 //Reset the timer
}
