///SetDisplayGun()
var GunType;
switch(CurrentClass)
{
    case 0:
        GunType = Pistol;
        break;
    case 1:
        GunType = Machinegun;
        break;
    case 2:
        GunType = Minigun;
        break;
    case 3:
        GunType = Sniper;
        break;
}

with(DisplayInst)
{
    Gun = GunType;
}
