///MM_CHANGE_ITEM_CONFIRM()
switch(myEditingType)
{
    case EditingType.PERKS:
        var Other_Perk = 0;
        if(CurrentPerk == 0) Other_Perk = 1;

        if(global.Class_Perk[Current_Class_Option * 2 + Other_Perk] != global.Perks[CurrentItem])
        {
            global.Class_Perk_Num[Current_Class_Option * 2 + CurrentPerk] = CurrentItem;
            Update_Class_Perks();
            
            myMenuMode = MM_EDIT_CLASS;
            myDrawMode = MM_EDIT_CLASS_DRAW;
        }
    case EditingType.GUNS:
        var Value = global.Num_Guns_Per_Type;
        switch(global.Class_Type[Current_Class_Option])
        {
            case "Pistol":
                Value *= 0;
                break;
            case "Machinegun":
                Value *= 1;
                break;
            case "Minigun":
                Value *= 2;
                break;
            case "Sniper":
                Value *= 3;
                break;
        }
    
        global.Class_Gun_Num[Current_Class_Option] = Value + CurrentItem;
        myMenuMode = MM_EDIT_CLASS;
        myDrawMode = MM_EDIT_CLASS_DRAW;
        break;
}

Playhit(snd_fight, audio_em);


