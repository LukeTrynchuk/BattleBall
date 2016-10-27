///Create_Explosion_eff()

    var inst = instance_create(x,y, Explosion_eff);
    with (inst)
    {
        mySprite = choose(Explosion_Orange_1_spr, Explosion_Orange_2_spr, Explosion_Orange_3_spr, Explosion_Blue_1_spr, Explosion_Blue_2_spr);
    }
