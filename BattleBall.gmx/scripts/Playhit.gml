///Playhit(sound_ID , audioem)
SoundToPlay = argument0;                                                    //Get the sound that we want to play
audio_em = argument1; 

audio_emitter_pitch(audio_em,random_range(0.9,1.1));                        //Vary the pitch
audio_emitter_gain(audio_em, random_range(0.8, 1.2));                       //Vary the gain (the volume)
audio_play_sound_on(audio_em, SoundToPlay, false,5);      
