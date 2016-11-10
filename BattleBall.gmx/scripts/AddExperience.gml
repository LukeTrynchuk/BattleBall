///AddExperience(numShots, numGoals)
var numShots = argument[0];
var numGoals = argument[1];
var Exp = EarnedExp(numShots, numGoals);
var WinExp = 0;
if(global.player1_score > global.player2_score) WinExp = global.WinMatchExp;
Exp += WinExp;

//Increment the experience points
switch(global.Class_Type[global.Current_Class])
{
    case "Pistol":
        global.PistolExp += Exp;
        if(global.PistolExp >= CalculateExp(global.PistolLvl) && global.PistolLvl < global.LvlCap)
        {
            global.PistolExp = global.PistolExp % CalculateExp(global.PistolLvl);
            global.PistolLvl++;
            LevelEffInst = instance_create(x,y,Obj_LevelUp_Effect);
        }
        break;
    case "MachineGun":
        global.MachineGunExp += Exp;
        if(global.MachineGunExp >= CalculateExp(global.MachineGunLvl) && global.MachineGunLvl < global.LvlCap)
        {
            global.MachineGunExp = global.MachineGunExp % CalculateExp(global.MachineGunLvl);
            global.MachineGunLvl++;
            LevelEffInst = instance_create(x,y,Obj_LevelUp_Effect);
        }
        break;
    case "Minigun":
        global.MinigunExp += Exp;
        if(global.MinigunExp >= CalculateExp(global.MinigunLvl) && global.MinigunLvl < global.LvlCap)
        {
            global.MinigunExp = global.MinigunExp % CalculateExp(global.MinigunLvl);
            global.MinigunLvl++;
            LevelEffInst = instance_create(x,y,Obj_LevelUp_Effect);
        }
        break;
    case "Sniper":
        global.SniperExp += Exp;
        if(global.SniperExp >= CalculateExp(global.SniperLvl) && global.SniperLvl < global.LvlCap)
        {
            global.SniperExp = global.SniperExp % CalculateExp(global.SniperLvl);
            global.SniperLvl++;
            LevelEffInst = instance_create(x,y,Obj_LevelUp_Effect);
        }
        break;
}
