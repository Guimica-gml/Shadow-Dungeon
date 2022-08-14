/// @description Starts the game music
if (!audio_is_playing(snd_main))
{
	audio_play_sound(snd_main, 0, true);
}
