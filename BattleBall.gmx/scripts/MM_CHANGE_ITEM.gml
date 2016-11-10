///MM_CHANGE_ITEM()
GetClassInput();

if((up || down) && CanSwitchClass)
{
    var LastItem = CurrentItem;
    var chooseDirection = -1;                                                                            //The direcitonal change
    if(down) chooseDirection = 1;                                                                        //Change the direction
    
    CurrentItem += chooseDirection;                                                                      //Set the change
    
    switch(myEditingType)                                                                                    //clamp the values
    {
        case EditingType.PERKS:
            CurrentItem = clamp(CurrentItem, 0, array_length_1d(global.Perks) -1);
            if(LastItem != CurrentItem) Playhit(snd_Switch, audio_em);
            break;
        case EditingType.GUNS:
            CurrentItem = clamp(CurrentItem, 0, global.Num_Guns_Per_Type - 1);
            if(LastItem != CurrentItem) Playhit(snd_Switch, audio_em);
            break;
    }
    Reset_Menu_Timer();                                                                                 //Reset the timer
}
else if (confirm)
{
    MM_CHANGE_ITEM_CONFIRM();
    CurrentItem = 0;
    Reset_Menu_Timer();                                                                                 //Reset the timer
}
else if (back)
{
    MM_CHANGE_ITEM_BACK();
    CurrentItem = 0;
    Reset_Menu_Timer();
}
