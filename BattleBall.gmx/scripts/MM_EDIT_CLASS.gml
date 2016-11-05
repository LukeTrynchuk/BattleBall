///MM_EDIT_CLASS()
global.ShowBars = true;
global.ShowGunBars = true;
GetClassInput();                                                                                //Get the input

if((left || right) && CanSwitchClass)                                                              //If the player is changing the selection
{
    var LastItem = CurrentPerk;
    var chooseDirection = -1;                                                                   //Set the direction
    if(right) chooseDirection = 1;                                                               //Change the direction
    
    CurrentPerk += chooseDirection;                                                    //Increment by the direction
    
    CurrentPerk = clamp(CurrentPerk, 0, 1);
    
    SetBars();                                                                                   //Set the stat bars
    SetGunBars();                                                                                //Set the gun stat bars
    if(LastItem != CurrentPerk) Playhit(snd_Switch, audio_em);
    Reset_Menu_Timer();                                                                         //Reset the timer
}
else if (confirm)                                                             //If the player is going confirming
{
    MM_EDIT_CLASS_CONFIRM();                                                                  //Execute confirm code
    Reset_Menu_Timer();                                                                         //Reset the timer
}
else if (back)                                                                //If the player is going back
{
    MM_EDIT_CLASS_BACK();                                                                     //Execute the back code
    Reset_Menu_Timer();
}
