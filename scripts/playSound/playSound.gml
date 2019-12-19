//Precondition: playSound() is called with a sound as its first argument and a volume as the second.
//Postcondition: The sound is played at the given volume.

audio_sound_gain(argument[0], argument[1], 0);
audio_play_sound(argument[0], 1, false);