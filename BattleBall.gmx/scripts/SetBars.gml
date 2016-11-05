///SetBars()
switch(Current_Class_Option)
{
    case 0:                     //Light
        with(MovementInst) Amount = 5;
        with(PowerInst) Amount = 1;
        with(RateOfFireInst)Amount = 3;
        break;
    case 1:                     //Gunsman
        with(MovementInst) Amount = 3;
        with(PowerInst) Amount = 2;
        with(RateOfFireInst)Amount = 3;
        break;
    case 2:                     //Heavy
        with(MovementInst) Amount = 1;
        with(PowerInst) Amount = 2;
        with(RateOfFireInst)Amount = 5;
        break;
    case 3:                     //Recon
        with(MovementInst) Amount = 3;
        with(PowerInst) Amount = 5;
        with(RateOfFireInst)Amount = 1;
        break;
}
