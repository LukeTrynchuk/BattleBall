///ChangeWeapon()
//=========CHANGE CURRENT USED WEAPON ( TO BE CHANGED) ======================
        if(CurrentClass == 0)
        {
            global.Bullet_Type = "Pistol";
        }
        else if (CurrentClass == 1)
        {
            global.Bullet_Type = "MachineGun";
        }
        else if (CurrentClass == 2)
        {
            global.Bullet_Type = "Minigun";
        }
        else
        {
            global.Bullet_Type = "Sniper";
        }
        //=========================================================================
