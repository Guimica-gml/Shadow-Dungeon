/// @description If the game is paused, unpauses the game, if it's unpaused, pauses the game
function pause_toggle()
{
	with (obj_control)
	{
		global.pause = !global.pause;
		
		if (global.pause)
		{
			pause_surf = surface_create(view_wport[0], view_hport[0]);
			surface_copy(pause_surf, 0, 0, application_surface);
			
			var pause_buffer = buffer_create(0, buffer_grow, 1);
			buffer_get_surface(pause_buffer, pause_surf, 0);
			buffer_save(pause_buffer, "pause_buffer");
			buffer_delete(pause_buffer);
			
			instance_deactivate_all(true);
			blend = c_dkgray;
		}
		else
		{
			instance_activate_all();
			alarm[1] = 1;
			blend = c_white;
		}
	}
}

/// @description Goes to the rm_tutorial and starts the game
function start_game()
{
	if (!instance_exists(obj_transition))
	{
		audio_play_sound(sfx_menu_button, 1, false);
		create_transition(rm_tutorial, -1, -1);
		
		with (obj_control)
		{
			alarm[3] = 60;
		}
		
		used = true;
	}
}

/// @description Goes to rm_menu
function goto_rm_menu()
{
	if (!instance_exists(obj_transition))
	{
		audio_play_sound(sfx_menu_button, 1, false);
		create_transition(rm_menu, -1, -1);
		used = true;
	}
}

/// @description Goes to rm_cresits
function goto_rm_credits()
{
	if (!instance_exists(obj_transition))
	{
		audio_play_sound(sfx_menu_button, 1, false);
		create_transition(rm_credits, -1, -1);
		used = true;
	}
}

/// @description Closes the game
function exit_game()
{
	if (!instance_exists(obj_transition))
	{
		game_end();
		used = true;
	}
}
