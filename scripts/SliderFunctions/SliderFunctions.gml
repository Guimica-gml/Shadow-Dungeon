function on_sound_effects_slider_changed(value)
{
	global.sound_effects_volume = value;
	global.audio_manager.set_audiogroup_volume(audiogroup_sound_effects, global.sound_effects_volume);
}

function on_music_slider_changed(value)
{
	global.music_volume = value;
	global.audio_manager.set_audiogroup_volume(audiogroup_musics, global.music_volume);
}
