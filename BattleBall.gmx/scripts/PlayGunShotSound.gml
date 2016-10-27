///PlayGunShotSound(sound_ID)
SoundToPlay = argument0;                                                    //Get the sound that we want to play

audio_emitter_pitch(audio_em,random_range(0.7,1.3));                        //Vary the pitch
audio_emitter_gain(audio_em, random_range(0.6, 1.4));                       //Vary the gain (the volume)
audio_play_sound_on(audio_em, SoundToPlay, false,5);                        //Play the sound
