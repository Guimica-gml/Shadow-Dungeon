// If the room has the "playable_room" tag
if (global.room_type == "playable_room")
{
	// Pauses the game
	if (keyboard_check_pressed(global.key_pause) && !instance_exists(obj_transition))
	{
		pause_toggle();
		
		if (global.pause)
		{
			pause_title = create_title(layer, "Pause", "Press 'esc' to resume the game");
			return;
		}
		
		instance_destroy(pause_title);
		pause_title = noone;
	}
}

// Restarts the game
if (room == rm_gameover && keyboard_check_pressed(ord("R")))
{
	game_restart();
}
