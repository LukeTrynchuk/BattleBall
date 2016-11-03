///MM_MAIN()
GetClassInput();

if((up || down) && CanSwitchClass)
{
    var chooseDirection = -1;                                                                            //The direcitonal change
    if(down) chooseDirection = 1;                                                                      //Change the direction
    
    Current_Selected_Option += chooseDirection;                                                         //Set the change
    
    if(Current_Selected_Option >= array_length_1d(MM_MENU_OPTIONS)) Current_Selected_Option = 0;        //Allow for upward movement
    if(Current_Selected_Option < 0) Current_Selected_Option = array_length_1d(MM_MENU_OPTIONS) - 1;     //Allow for downward movement
    
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
        case 2:
            MM_MENU_QUIT();                                                                             //Code for the quit option
            break;
    }
    
    Reset_Menu_Timer();                                                                                 //Reset the timer
}
