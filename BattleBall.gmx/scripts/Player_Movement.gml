///Player_Movement()
//NOTE: GameMaker's y coords are flipped (-1 = up)
IsMoving = false;                                                   //The player is not moving so far


spd = haxis * 6                                                     //Set the speed, direction * 6 (scalar)

if(haxis < .2 && haxis > -.2)                                       //if within deadzone
{
    haxis = 0;                                                      //Set the haxis to 0
}
else
{
    phy_position_x += spd;                                         //Add speed to the physics x position
    IsMoving = true;                                               //The player walking sound is not playing
     if(!isPlayingWalkingSound)                     
     {
        isPlayingWalkingSound = true;                               //Set player walking sound to playing true
        audio_emitter_position(audio_em,0,0,0);                     //Set the audio emitter position
        audio_emitter_gain(audio_em, 0.1);                          //Set the audio emitter gain
        
        if(place_meeting(x,y + 1, obj_gravel))                                  //If we are in contact with gravel below then play the gravel sound
        {
            audio_play_sound_on(audio_em, player_footstep_gravel, true, 5);
        }
        else if(place_meeting(x,y + 1, obj_wood))                               //If we are in contact with wood below then play the gravel sound
        {
            audio_play_sound_on(audio_em, player_footstep_wood, true, 5);
        }
        else if(place_meeting(x,y + 1, obj_metal))                              //Else if we are in contact with metal below and can play the sound
        {
            if(Can_Play_Metal_Sound)
            {
                audio_emitter_pitch(audio_em, random_range(0.9, 1.1));          //Set the pitch
                audio_play_sound_on(audio_em,choose( player_footstep_metal_1, player_footstep_metal_2, player_footstep_metal_3), false, 5); //Play the metal sound
                Can_Play_Metal_Sound = false;                                   //Set can play metal sound to false
                alarm[9] = Metal_Sound_Time;                                    //Set the metal timer
            }
        }
        else                                                                //Otherwise we are standing on neither of those materials
        {
            audio_play_sound_on(audio_em, player_footstep, true,5);         //Play generic footstep sound
        }
     }
}


        if ( phy_position_x < room_width/4 && phy_position_x < room_width/2)        //If within 1st quarter of the room, set the position of the emitter
        {
            audio_emitter_position(audio_s, 300, y, 0);
        }
        else if ( phy_position_x < room_width/2)                                    //If within 2nd quarter of the room, set the position of the emitter
        {
            audio_emitter_position(audio_s, 100, y, 0);
        }
        if ( phy_position_x > room_width/4 && phy_position_x > room_width/2)        //If within 2nd half of the room, set the position of the emitter
        {
            audio_emitter_position(audio_s, -500, y, 0);
        }
        else if ( phy_position_x > room_width/2)                                    //If within the last quarter of the room, set the position of the emitter
        {
            audio_emitter_position(audio_s, -100, y, 0);
        }


if(haxis > 0)                                                                       //If we have pressed right
{
     if(!right_trigger)                                                             //If not shooting
     {
        image_xscale = 1;                                                           //Set the image scale
     }
     SpriteState = "Walk_Right";                                                    //Set the sprite state 
}


if(haxis < 0)                                                                      //If we have pressed left
{
     if(!right_trigger)                                                            //If not shooting
     {
        image_xscale = -1;                                                          //set the image scale
     }
     SpriteState = "Walk_Left";                                                     //Set the sprite state
}

if(haxis == 0)                                                                      //if we are not moving (pressing in a direction)
{
    if(isPlayingWalkingSound)                                                       //If we are playing the walking sound
    {
        isPlayingWalkingSound = false;                                              //We are now no longer playing the walking sound
        audio_stop_sound(player_footstep);                                          //Stop the player footstep sound
        audio_stop_sound(player_footstep_gravel);                                   //Stop the player gravel sound
        audio_stop_sound(player_footstep_wood);                                     //Steop the player wood sound
    }
}


if(not IsMoving) SpriteState = "Idle";                                              //Set the sprite to the idle sprite if the player is not moving

SolidContactLastFrame = SolidContactThisFrame;                                      //Set the last frame solid contact to the current one.

if(place_meeting(x,y+1,Obj_Solid) || (place_meeting(x,y+1,Obj_Ball) && global.Ball.y > y)) //If there is a meeting below the player with a Obj_Solid or Obj_Ball
{
    SolidContactThisFrame = true;                                                           //Set contact this frame
    if(place_meeting(phy_position_x,phy_position_y +1,obj_metal) && !place_meeting(phy_position_xprevious, phy_position_yprevious + 1, obj_metal))  //If there is a new place meeting with metal
    {
        audio_emitter_gain(audio_em, 0.1);                                                                                                          //Set the gain
        audio_emitter_pitch(audio_em, random_range(0.9, 1.1));                                                                                      //Set the pitch
        audio_play_sound_on(audio_em,choose( player_footstep_metal_1, player_footstep_metal_2, player_footstep_metal_3), false, 5);                 //Play the sound
        Can_Play_Metal_Sound = false;                                                                                                               //We can no longer play the metal sound
        alarm[9] = Metal_Sound_Time;                                                                                                                //Set the metal alarm
    }
    
}
else                                                                                                                                                //Otherwise we are not incontact with a solid or ball
{
    ResetCharge();                                                  //Reset the charge for the charge up shot
    SolidContactThisFrame = false;                                  //There is not a contact this frame
    SpriteState = "Jump";                                           //Set the sprite state
    if(isPlayingWalkingSound)                                       //If we are playing the walking sound
    {   
        isPlayingWalkingSound = false;                              //We are no longer playing the walking sound
        audio_stop_sound(player_footstep);                          //Stop the footstep sound
        audio_stop_sound(player_footstep_gravel);                   //Stop the gravel footstep sound
        audio_stop_sound(player_footstep_wood);                     //Stop the wood footstep sound
    }
}

                                                                            //Jumping code
if(up && (!IsJumping || NumOfJumps < ConsecutiveJumps) && CanJump)          //If we can jump and we hit the jump button
{
    phy_position_y--;                                                       //Push the player up
    audio_emitter_position(audio_em,0,0,0);                                 //Set the position of the audio emitter
    audio_emitter_pitch(audio_em,random_range(0.8,1.2));                    //Set the pitch of the audio emitter
    audio_emitter_gain(audio_em, 0.1);                                      //Set the gain of the audio emitter
    audio_play_sound_on(audio_em, POP_Sucker_04, false,2);                  //Play the sound

    if(NumOfJumps = 0)                                                      //If this is our first jump
    {
        instance_create(x,y+18, Obj_Dust_Jump);                             //Create the dust jump effect
    }
    
    
    if(CurrentCharge >= MaxCharge)                                          //If the current charge is greater than or equal to the maximum charge
    {
        physics_apply_impulse(x,y,0,JumpingPowerY * 2);                     //Apply linear impulse at the players position 5 units up
    }
    else                                                                    //Otherwise we are below the maximum charge
    {
        physics_apply_impulse(x,y,0,JumpingPowerY);                         //Apply linear impulse at the players position 5 units up
    }
     ResetCharge();                                                         //Reset the charge
     SpriteState = "Jump";                                                  //Set the sprite state to jump
     IsJumping = true;                                                      //Set is jumping to true, we are now jumping
     NumOfJumps++;                                                          //Increment the number of jumps
     CanJump = false;                                                       //We can no longer jump again
}
else if (up_release)                                                        //If the jump button is released
{
    CanJump = true;                                                         //We can no longer jump    
}

