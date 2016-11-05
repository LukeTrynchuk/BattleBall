///Player_Animate()

if(playerNum == 1)
{
    if(SpriteState == "Idle")
    {
        sprite_index = player_idle;
    }
    else if (SpriteState == "Walk_Left")
    {
        sprite_index = player_walk;
    }
    else if (SpriteState == "Walk_Right")
    {
        sprite_index = player_walk;
    }
    else if (SpriteState == "Jump")
    {
        sprite_index = player_jump;
        if(phy_position_y > phy_position_yprevious)
        {
            image_index = 1;
        }
        else
        {
            image_index = 0;
        }
    }
}
else if (playerNum == 2)
{
    if(SpriteState == "Idle")
    {
        sprite_index = player_idle_p2;
    }
    else if (SpriteState == "Walk_Left")
    {
        sprite_index = player_walk_p2;
    }
    else if (SpriteState == "Walk_Right")
    {
        sprite_index = player_walk_p2;
    }
    else if (SpriteState == "Jump")
    {
        sprite_index = player_jump_p2;
        if(phy_position_y > phy_position_yprevious)
        {
            image_index = 1;
        }
        else
        {
            image_index = 0;
        }
    }
}
