///MM_CHOOSE_CLASS()
GetClassInput();                                                                                //Get the input

if((up || down) && CanSwitchClass)                                                              //If the player is changing the selection
{
    var chooseDirection = -1;                                                                   //Set the direction
    if(down) chooseDirection = 1;                                                               //Change the direction
    
    Current_Class_Option += chooseDirection;                                                    //Increment by the direction
    Current_Class_Option = clamp(Current_Class_Option, 0, array_length_1d(myClasses) - 1);      //clamp the value
    
    Reset_Menu_Timer();                                                                         //Reset the timer
}
else if (btn_Y)
{
    global.Current_Class = Current_Class_Option;                                                //Set the new class
    Reset_Menu_Timer();
}
else if (confirm)                                                                               //If the player is going confirming
{
    MM_CHOOSE_CLASS_CONFIRM();                                                                  //Execute confirm code
    Reset_Menu_Timer();                                                                         //Reset the timer
}
else if (back)                                                                                  //If the player is going back
{
    MM_CHOOSE_CLASS_BACK();                                                                     //Execute the back code
    Reset_Menu_Timer();
}
