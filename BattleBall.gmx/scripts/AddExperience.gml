///AddExperience(numShots, numGoals)
var numShots = argument[0];                                                                                         //The number of shots
var numGoals = argument[1];                                                                                         //The number of goals
var Exp = EarnedExp(numShots, numGoals);                                                                            //The exp earned
var WinExp = 0;                                                                                                     //The win exp
if(global.player1_score > global.player2_score) WinExp = global.WinMatchExp;                                        //If won the get win exp
Exp += WinExp;                                                                                                      //Add the exp

//Increment the experience points
switch(global.Class_Type[global.Current_Class])                                                                     //Challenge the current class type
{
    case "Pistol":                                                                                                  //If pistol
        global.PistolExp += Exp;                                                                                    //Add the exp to the pistol exp
        if(global.PistolExp >= CalculateExp(global.PistolLvl) && global.PistolLvl < global.LvlCap)                  //If we leveled up
        {
            global.PistolExp = global.PistolExp % CalculateExp(global.PistolLvl);                                   //Get remaining exp
            global.PistolLvl++;                                                                                     //Increment the level
            LevelEffInst = instance_create(x,y,Obj_LevelUp_Effect);                                                 //Create a level up instance
        }
        break;
    case "MachineGun":                                                                                              //If machine gun 
        global.MachineGunExp += Exp;                                                                                //Add exp to the machine gun exp
        if(global.MachineGunExp >= CalculateExp(global.MachineGunLvl) && global.MachineGunLvl < global.LvlCap)      //If we leveled up
        {
            global.MachineGunExp = global.MachineGunExp % CalculateExp(global.MachineGunLvl);                       //Get the remaining exp
            global.MachineGunLvl++;                                                                                 //Increment the gun level
            LevelEffInst = instance_create(x,y,Obj_LevelUp_Effect);                                                 //Create a level up instance
        }
        break;
    case "Minigun":                                                                                                 //If minigun
        global.MinigunExp += Exp;                                                                                   //Add the exp to the minigun exp
        if(global.MinigunExp >= CalculateExp(global.MinigunLvl) && global.MinigunLvl < global.LvlCap)               //If we leveled up
        {
            global.MinigunExp = global.MinigunExp % CalculateExp(global.MinigunLvl);                                //Get the remaining exp
            global.MinigunLvl++;                                                                                    //Increment the minigun level
            LevelEffInst = instance_create(x,y,Obj_LevelUp_Effect);                                                 //Create a level up instance
        }
        break;
    case "Sniper":                                                                                                  //If sniper
        global.SniperExp += Exp;                                                                                    //Add experience to sniper experience
        if(global.SniperExp >= CalculateExp(global.SniperLvl) && global.SniperLvl < global.LvlCap)                  //If leveled up
        {
            global.SniperExp = global.SniperExp % CalculateExp(global.SniperLvl);                                   //Get the remaining experience left
            global.SniperLvl++;                                                                                     //Increment the sniper level
            LevelEffInst = instance_create(x,y,Obj_LevelUp_Effect);                                                 //Create a level up instance
        }
        break;
}
