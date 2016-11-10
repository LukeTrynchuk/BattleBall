///SetBars()
switch(global.Gun_Name[global.Class_Gun_Num[Current_Class_Option]])
{
    case "Ol' Rusty":                     //Light
        with(Gun_PowerInst) Amount = 1;
        with(Gun_Kickback) Amount = 1;
        with(Gun_Accuracy)Amount = 3;
        break;
    case "Eh Kay 47":                     //Gunsman
        with(Gun_PowerInst) Amount = 3;
        with(Gun_Kickback) Amount = 2;
        with(Gun_Accuracy)Amount = 2;
        break;
    case "Spitter":                     //Heavy
        with(Gun_PowerInst) Amount = 1;
        with(Gun_Kickback) Amount = 4;
        with(Gun_Accuracy)Amount = 1;
        break;
    case "Blind Eye":                     //Recon
        with(Gun_PowerInst) Amount = 5;
        with(Gun_Kickback) Amount = 5;
        with(Gun_Accuracy)Amount = 5;
        break;
}
