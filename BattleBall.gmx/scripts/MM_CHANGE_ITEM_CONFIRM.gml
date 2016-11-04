///MM_CHANGE_ITEM_CONFIRM()
switch(myEditingType)
{
    case EditingType.PERKS:
        var Other_Perk = 0;
        if(CurrentPerk == 0) Other_Perk = 1;

        if(global.Class_Perk[Current_Class_Option * 2 + Other_Perk] != global.Perks[CurrentItem])
        {
            global.Class_Perk[Current_Class_Option * 2 + CurrentPerk] = global.Perks[CurrentItem];
            myMenuMode = MM_EDIT_CLASS;
            myDrawMode = MM_EDIT_CLASS_DRAW;
        }
}



