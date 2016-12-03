///Player_Animate()

if(playerNum == 1)                                          //If we are the first player
{
    if(SpriteState == "Idle")                               //If the player state is idle
    {
        sprite_index = player_idle;                         //Set the sprite to the idle sprite
    }
    else if (SpriteState == "Walk_Left")                    //If the player state is walk left state
    {
        sprite_index = player_walk;                         //Set the sprite to the walking sprite
    }
    else if (SpriteState == "Walk_Right")                   //If the player state is walk right state
    {
        sprite_index = player_walk;                         //Set the sprite to the walking sprite
    }
    else if (SpriteState == "Jump")                         //If the sprite state is the jumping state
    {
        sprite_index = player_jump;                         //Set the sprite to the jumping sprite
        if(phy_position_y > phy_position_yprevious)         //If we are falling
        {
            image_index = 1;                                //Set the sprite to the second image index
        }
        else                                                //Otherwise 
        {
            image_index = 0;                                //Set the index to the first image index
        }
    }
}
else if (playerNum == 2)                                    //If we are the second player
{
    if(SpriteState == "Idle")                               //If we are in the idle sprite state
    {
        sprite_index = player_idle_p2;                      //Change sprite to the p2 idle sprite
    }
    else if (SpriteState == "Walk_Left")                    //If we are in the walking left sprite state
    {
        sprite_index = player_walk_p2;                      //Set the sprite to player walking sprite
    }
    else if (SpriteState == "Walk_Right")                   //If we are in the walking right sprite state
    {
        sprite_index = player_walk_p2;                      //Set the sprite equal to the p2 player walking sprite
    }
    else if (SpriteState == "Jump")                         //Else if we are in the jumping sprite state
    {
        sprite_index = player_jump_p2;                      //Set the sprite equal to the p2 player jump sprite
        if(phy_position_y > phy_position_yprevious)         //If we are falling
        {
            image_index = 1;                                //Set equal to the falling index
        }
        else
        {
            image_index = 0;                                //Set equal to the jumping index
        }
    }
}
