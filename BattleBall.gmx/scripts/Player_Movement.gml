///Player_Movement()
//NOTE: GameMaker's y coords are flipped (-1 = up)
IsMoving = false;                                                   //The player is not moving so far

spd = haxis * 6

if(haxis < .2 && haxis > -.2) 
{
    haxis = 0;
}
else
{
    phy_position_x += spd;                                         //Add speed to the physics x position
    IsMoving = true;                                               //The player is moving
     if(!isPlayingWalkingSound)
     {
        isPlayingWalkingSound = true;
        audio_emitter_position(audio_em,0,0,0);
        audio_emitter_gain(audio_em, 0.1);
        audio_play_sound_on(audio_em, player_footstep, true,5);
     }
}


        if ( phy_position_x < room_width/4 && phy_position_x < room_width/2)
        {
        audio_emitter_position(audio_s, 300, y, 0);
        }
        else if ( phy_position_x < room_width/2)
        {
        audio_emitter_position(audio_s, 100, y, 0);
        }
        if ( phy_position_x > room_width/4 && phy_position_x > room_width/2)
        {
        audio_emitter_position(audio_s, -500, y, 0);
        }
        else if ( phy_position_x > room_width/2)
        {
        audio_emitter_position(audio_s, -100, y, 0);
        }


if(haxis > 0)                                                           //If we have pressed right
{
     if(!right_trigger || Aim_8_Dir)
     {
        image_xscale = 1;
     }
     SpriteState = "Walk_Right";                                          //Set the sprite state 
}


if(haxis < 0)                                                            //If we have pressed the a key
{
     if(!right_trigger  || Aim_8_Dir)
     {
        image_xscale = -1;
     }
     SpriteState = "Walk_Left";                                     //Set the sprite state
}

if(haxis = 0)
{
    if(isPlayingWalkingSound)
    {
        isPlayingWalkingSound = false;
        audio_stop_sound(player_footstep);
    }
}


if(not IsMoving) SpriteState = "Idle";                              //Set the sprite to the idle sprite if the player is not moving

SolidContactLastFrame = SolidContactThisFrame;

if(place_meeting(x,y+1,Obj_Solid) || (place_meeting(x,y+1,Obj_Ball) && global.Ball.y > y)) //If there is a meeting below the player with a Obj_Solid or Obj_Ball
{
    SolidContactThisFrame = true;    

}
else
{
    ResetCharge();                                                  //Reset the charge for the charge up shot
    SolidContactThisFrame = false;
    SpriteState = "Jump";
    if(isPlayingWalkingSound)
    {   
        isPlayingWalkingSound = false;
        audio_stop_sound(player_footstep);
    }
}

                                                                    //Jumping code
if(up && (!IsJumping || NumOfJumps < ConsecutiveJumps) && CanJump)
{
    phy_position_y--;
    audio_emitter_position(audio_em,0,0,0);
    audio_emitter_pitch(audio_em,random_range(0.8,1.2));
    audio_emitter_gain(audio_em, 0.1);
    audio_play_sound_on(audio_em, POP_Sucker_04, false,2);

    if(NumOfJumps = 0)
    {
        instance_create(x,y+18, Obj_Dust_Jump);
    }
    
    
    if(CurrentCharge >= MaxCharge)
    {
        physics_apply_impulse(x,y,0,JumpingPowerY * 2);                     //Apply linear impulse at the players position 5 units up
    }
    else
    {
        physics_apply_impulse(x,y,0,JumpingPowerY);                     //Apply linear impulse at the players position 5 units up
    }
     ResetCharge();
     SpriteState = "Jump";
     IsJumping = true;
     NumOfJumps++;
     CanJump = false;
}
else if (up_release)                                                //If the space key is released
{
    CanJump = true;
}

