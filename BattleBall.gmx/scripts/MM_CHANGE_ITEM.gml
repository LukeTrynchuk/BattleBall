///MM_CHANGE_ITEM()
GetClassInput();

if((up || down) && CanSwitchClass)
{
    var chooseDirection = -1;                                                                            //The direcitonal change
    if(down) chooseDirection = 1;                                                                        //Change the direction
    
    CurrentItem += chooseDirection;                                                                      //Set the change
    
    switch(myEditingType)                                                                                    //clamp the values
    {
        case EditingType.PERKS:
            CurrentItem = clamp(CurrentItem, 0, array_length_1d(global.Perks) -1);
            break;
    }
    
    Reset_Menu_Timer();                                                                                 //Reset the timer
}
else if (confirm)
{
    MM_CHANGE_ITEM_CONFIRM();
    Reset_Menu_Timer();                                                                                 //Reset the timer
}
else if (back)
{
    MM_CHANGE_ITEM_BACK();
    Reset_Menu_Timer();
}
