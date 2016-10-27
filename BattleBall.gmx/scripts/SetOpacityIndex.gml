///SetOpacityIndex(length, CurrentIndex)
var length = argument0;
var myIndex = argument1;

if((left || right) && CanSwitchClass)
{
    var SwitchDirection = 1;                                //Create the direction variable
    if(left) SwitchDirection = -1;                          //if left, the direction is -1
    myIndex += SwitchDirection;                             //Add the direction to the current index
    
    if(myIndex >= length)                                   //Set the bounds
    {
        myIndex = 0;
    }
    else if (myIndex < 0)
    {
        myIndex = length - 1;
    }
    
    audio_emitter_pitch(audio_em,random_range(0.90,1.10));
    audio_emitter_gain(audio_em, 0.05);
    audio_play_sound_on(audio_em, snd_Switch, false,2);

    
    CanSwitchClass = false;                                 //The player can't switch index again
    alarm[0] = SwitchTimer;                                 //Set the timer
}

return myIndex;
