///SetBars()
switch(Current_Class_Option)
{
    case 0:                     //Light
        with(Gun_PowerInst) Amount = 1;
        with(Gun_Kickback) Amount = 1;
        with(Gun_Accuracy)Amount = 3;
        break;
    case 1:                     //Gunsman
        with(Gun_PowerInst) Amount = 3;
        with(Gun_Kickback) Amount = 2;
        with(Gun_Accuracy)Amount = 2;
        break;
    case 2:                     //Heavy
        with(Gun_PowerInst) Amount = 1;
        with(Gun_Kickback) Amount = 4;
        with(Gun_Accuracy)Amount = 1;
        break;
    case 3:                     //Recon
        with(Gun_PowerInst) Amount = 5;
        with(Gun_Kickback) Amount = 5;
        with(Gun_Accuracy)Amount = 5;
        break;
}
