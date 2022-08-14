// Makes the room clearer after some frames
alarm[0] = 15;

with (par_enemy)
{
	stop = true;
}

// If the player exists it will change it's position
if (goal_x != -1 && goal_y != -1 && instance_exists(obj_player))
{
	obj_player.x = goal_x;
	obj_player.y = goal_y;
}

// Depending on the room, different things can happen
switch (room)
{
	case rm_tutorial:
		// Sets the player to be the camera's target
		with (obj_camera)
		{
			target = obj_player;
		}
		break
	case rm_dungeon1_boss:
		// Plays a different audio when player enters the boss room
		audio_stop_sound(snd_main);
		audio_play_sound(snd_boss, 0, true);
		with (obj_camera)
		{
			target = id;
		}
		break
}

load_room_info();
