function AudioManager() constructor
{
	started = false;
	
	/// @method start()
	/// @description Starts everything that the audios need to work
	static start = function()
	{
		// Just proceed if the audio manager didn't start yet
		if (started) throw "Trying to start audio manager that was already started";
		started = true;
		
		// Loads the audio groups
		audio_group_load(audiogroup_musics);
		audio_group_load(audiogroup_sound_effects);
	}
	
	/// @method set_audiogroup_volume(audiogroup, volume)
	/// @description Sets the volume of one specific audiogroup
	/// @param {asset} audiogroup - The audiogroup to set the volume
	/// @param {real} volume - The... volume
	static set_audiogroup_volume = function(audiogroup, volume)
	{
		audio_group_set_gain(audiogroup, volume, 1);
	}
}
