///Player_Animate()

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

