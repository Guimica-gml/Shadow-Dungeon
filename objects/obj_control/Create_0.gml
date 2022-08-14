/// @description Init

create_particles();
create_fonts();

// Sets the game cursor
window_set_cursor(cr_none);
cursor_sprite = spr_cursor;

global.room_info = {}; // Used to save info of the rooms
global.room_type = asset_get_tags(room, asset_room)[0];

// A reference to the pause title when the game is paused
pause_title = noone;

global.pause = false; // If the game is paused
pause_surf = -1; // Surface used when the game is paused
blend = c_white; // Color to blend to the hud

// Variables for input
global.key_up = ord("W");
global.key_down = ord("S");
global.key_right = ord("D");
global.key_left = ord("A");
global.key_interact = ord("E");
global.key_reload = ord("R");
global.key_throw = ord("Q");
global.key_pause = vk_escape;

// Player stats
global.current_weapon = noone;
global.max_hp = 6;
global.hp = global.max_hp;
global.player_can_move = true;

// Music variables
global.music_volume = 1;
global.sound_effects_volume = 1;

load_player_preferences();

// Setting up audio
global.audio_manager = new AudioManager();
global.audio_manager.start();
global.audio_manager.set_audiogroup_volume(audiogroup_musics, global.music_volume);
global.audio_manager.set_audiogroup_volume(audiogroup_sound_effects, global.sound_effects_volume);

// Waits the audio groups to load and starts the music
alarm[2] = 1;

// Variables for knife
global.knife_level = 0;
global.knife_damage = 1;
global.knife_force = 30;
global.current_knife_force = 0;
if (!variable_global_exists("knife")) global.knife = noone;

// Position to draw the hud
hud_x = 30;
hud_y = 40;

// Variables for timer
second = 0;
minute = 0;
hour = 0;

/// @description Formats the given time
/// @method format_time(time)
/// @param {real} time - The minute/hour/second to format
format_time = function(time)
{
	time = string(round(time));
	if (string_length(time) < 2) return "0" + time;
	return time;
};
