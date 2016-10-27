///Draw_ChosenPerks()
var PositionY = room_height / 3 * 2 + 50;
    var PositionX = room_width / 3 * 2 + 50;
    var NumDrawn = 0;
    var Perks = global.ChosenPerks;
    if(myPlayer_Choosing ==  PlayerChoosing.PLAYER_2) Perks = global.ChosenPerksP2;
    
    for(var CurrentPerkC = 0; CurrentPerkC < array_length_1d(Perks); CurrentPerkC++)
    {
        if(Perks[CurrentPerkC])
        {
            switch(CurrentPerkC)
            {
                case 0:
                    draw_sprite_ext(TripleJumpPerk,0, PositionX,PositionY,0.5,0.5,0,c_white,1);  
                    draw_text(PositionX + 60, PositionY - 10,"Triple Jump");             
                    break;
                case 1:
                    draw_sprite_ext(RateOfFirePerk,0, PositionX,PositionY,0.5,0.5,0,c_white,1);
                    draw_text(PositionX + 60, PositionY - 10,"Increased Rate of fire"); 
                    break;
                case 2:
                    draw_sprite_ext(ExtraExplosivePerk,0, PositionX,PositionY,0.5,0.5,0,c_white,1);
                    draw_text(PositionX + 60, PositionY - 10,"Extra explosive"); 
                    break;
                case 3:
                    draw_sprite_ext(DashCooldownPerk,0, PositionX,PositionY,0.5,0.5,0,c_white,1);
                    draw_text(PositionX + 60, PositionY - 10,"Shorter dash cooldown"); 
                    break;
                case 4:
                    draw_sprite_ext(Aim8DirPerk ,0, PositionX,PositionY,0.5,0.5,0,c_white,1);
                    draw_text(PositionX + 60, PositionY - 10, "Aim in 8 directions");
                    break;
                case 5:
                    draw_sprite_ext(SmashPerk, 0,PositionX, PositionY,0.5,0.5,0,c_white, 1);
                    draw_text(PositionX + 60, PositionY - 10, "Smashing down dash");
                    break;
            }        
            PositionY += 65;
            NumDrawn++;
        }
        if(NumDrawn == 2) break;
    }
