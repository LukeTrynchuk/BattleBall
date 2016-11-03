///MM_EDIT_CLASS()
GetClassInput();                                                                                //Get the input

if((left || right) && CanSwitchClass)                                                              //If the player is changing the selection
{
    var chooseDirection = -1;                                                                   //Set the direction
    if(right) chooseDirection = 1;                                                               //Change the direction
    
    CurrentPerk += chooseDirection;                                                    //Increment by the direction
    
    if(CurrentPerk >= 2) CurrentPerk = 0;            //Clamp
    if(CurrentPerk < 0) CurrentPerk = 1;         //Clamp
    
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
