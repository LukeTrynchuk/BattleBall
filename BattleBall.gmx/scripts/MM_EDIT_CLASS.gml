///MM_EDIT_CLASS()
GetClassInput();                                                                                //Get the input

if((up || down) && CanSwitchClass)                                                              //If the player is changing the selection
{
    //var chooseDirection = -1;                                                                   //Set the direction
    //if(down) chooseDirection = 1;                                                               //Change the direction
    
    //Current_Class_Option += chooseDirection;                                                    //Increment by the direction
    
    //if(Current_Class_Option >= array_length_1d(myClasses)) Current_Class_Option = 0;            //Clamp
    //if(Current_Class_Option < 0) Current_Class_Option = array_length_1d(myClasses) - 1;         //Clamp
    
    //Reset_Menu_Timer();                                                                         //Reset the timer
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
