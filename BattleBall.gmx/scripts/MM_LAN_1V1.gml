///MM_LAN_1V1()

for(var CurrentPerk = 0; CurrentPerk < TotalNumPerks; CurrentPerk++)
{
    global.ChosenPerks[CurrentPerk] = false;
}

for(var CurrentPerk = 0; CurrentPerk < 2; CurrentPerk++)
{
    switch(global.Class_Perk[CurrentPerk * 2 + CurrentPerk])
    {
        case "Triple_Jump":
            global.ChosenPerk[0] = true;
            break;
        case "Rate_of_fire":
            global.ChosenPerk[1] = true;
            break;
        case "Explosive":
            global.ChosenPerk[2] = true;
            break;
        case "Dash_Cooldown":
            global.ChosenPerks[3] = true;
            break;
        case "Aim8DirPerk":
            global.ChosenPerks[4] = true;
            break;
        case "SmashPerk":
            global.ChosenPerks[5] = true;
            break;
    }
}

global.ChosenPerksP2 = global.ChosenPerks;

switch(global.Current_Class)
{
    case 0:
        global.Player1Gun = "Pistol";
        global.Player2Gun = "Pistol";
        break;
    case 1:
        global.Player1Gun = "MachineGun";
        global.Player2Gun = "MachineGun";
        break;
    case 2:
        global.Player1Gun = "Minigun";
        global.Player2Gun = "Minigun";
        break;
    case 3:
        global.Player1Gun = "Sniper";
        global.Player2Gun = "Sniper";
        break;
}

global.Bullet_Type = global.Player1Gun;

room_goto(rm_Level_Select);         //Go to the level select
