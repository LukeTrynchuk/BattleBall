///MM_EDIT_CLASS()
global.ShowBars = true;
global.ShowGunBars = true;
GetClassInput();                                                                                //Get the input

if((left || right) && CanSwitchClass)                                                              //If the player is changing the selection
{
    var LastItem = CurrentPerk;
    var chooseDirection = -1;                                                                   //Set the direction
    if(right) chooseDirection = 1;                                                               //Change the direction
    
    switch(myEditingType)
    {
        case EditingType.PERKS:
            CurrentPerk += chooseDirection;                                                    //Increment by the direction
            CurrentPerk = clamp(CurrentPerk, 0, 1);
            break;
        case EditingType.GUNS:                                                                  //Allow the player to edit what class type
            switch(global.Class_Gun[Current_Class_Option])
            {
                case "Pistol":
                    if(chooseDirection = 1) 
                    {
                        global.Class_Gun[Current_Class_Option] = "MachineGun";
                        global.Class_Gun_Num[Current_Class_Option] = global.Num_Guns_Per_Type * 1;
                        global.Class_Type[Current_Class_Option] = "MachineGun";
                    }
                    break;
                case "MachineGun":
                    if(chooseDirection = 1) 
                    {
                        global.Class_Gun[Current_Class_Option] = "Minigun";
                        global.Class_Gun_Num[Current_Class_Option] = global.Num_Guns_Per_Type * 2;
                        global.Class_Type[Current_Class_Option] = "Minigun";
                    }
                    if(chooseDirection = -1)
                    {
                         global.Class_Gun[Current_Class_Option] = "Pistol";
                         global.Class_Gun_Num[Current_Class_Option] = global.Num_Guns_Per_Type * 0;
                         global.Class_Type[Current_Class_Option] = "Pistol";
                    }
                    break;
                case "Minigun":
                    if(chooseDirection = 1) 
                    {
                        global.Class_Gun[Current_Class_Option] = "Sniper";
                        global.Class_Gun_Num[Current_Class_Option] = global.Num_Guns_Per_Type * 3;
                        global.Class_Type[Current_Class_Option] = "Sniper";
                    }
                    if(chooseDirection = -1) 
                    {
                        global.Class_Gun[Current_Class_Option] = "MachineGun";
                        global.Class_Gun_Num[Current_Class_Option] = global.Num_Guns_Per_Type * 1;
                        global.Class_Type[Current_Class_Option] = "MachineGun";
                    }
                    break;
                case "Sniper":
                    if(chooseDirection = -1) 
                    {
                        global.Class_Gun[Current_Class_Option] = "Minigun";
                        global.Class_Gun_Num[Current_Class_Option] = global.Num_Guns_Per_Type * 2;
                        global.Class_Type[Current_Class_Option] = "Minigun";
                    }
                    break;
            }
            break;
    }
    
    SetBars();                                                                                   //Set the stat bars
    SetGunBars();                                                                                //Set the gun stat bars
    if(LastItem != CurrentPerk) Playhit(snd_Switch, audio_em);
    Reset_Menu_Timer();                                                                         //Reset the timer
}
else if ((up || down) && CanSwitchClass)
{
    switch(myEditingType)
    {
        case EditingType.PERKS:
            if(up)  myEditingType = EditingType.GUNS;
            break;
        case EditingType.GUNS: 
            if(down) myEditingType = EditingType.PERKS;
            break;
    }
    Reset_Menu_Timer();
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
