///SetOpacityIndex(length, CurrentIndex)
var length = argument0;                                     //Get the length
var myIndex = argument1;                                    //Get the index

if((left || right) && CanSwitchClass)                       //If either direction and can switch button / index / class
{
    var SwitchDirection = 1;                                //Create the direction variable
    if(left) SwitchDirection = -1;                          //if left, the direction is -1
    myIndex += SwitchDirection;                             //Add the direction to the current index
    
    if(myIndex >= length)                                   //Set the bounds
    {
        myIndex = 0;                                        //Set the index to 0
    }
    else if (myIndex < 0)                                   //If index is less than 0
    {
        myIndex = length - 1;                               //Set the 
    }
    
    audio_emitter_pitch(audio_em,random_range(0.90,1.10));
    audio_emitter_gain(audio_em, 0.05);
    audio_play_sound_on(audio_em, snd_Switch, false,2);

    
    CanSwitchClass = false;                                 //The player can't switch index again
    alarm[0] = SwitchTimer;                                 //Set the timer
}

return myIndex;
