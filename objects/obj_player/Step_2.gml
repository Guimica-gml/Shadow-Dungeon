move_and_collide();

// Gets the initial position of the gun
gun_xstart = x;
gun_ystart = y - 20;

with (global.knife)
{
	// Applies the attack force to the knife
	if (global.current_knife_force == 0 && mouse_check_button_pressed(mb_left))
	{
		audio_play_sound(sfx_knife, 1, false);
		global.current_knife_force = global.knife_force;
	}
	
	// Returns the knife force to zero
	global.current_knife_force = max(global.current_knife_force - 2, 0);
	
	// Gets variables about the position of the knife
	var rot = point_direction(other.gun_xstart, other.gun_ystart, mouse_x, mouse_y);
	var cur_f = global.current_knife_force;
	var xx = other.gun_xstart + lengthdir_x(20 + cur_f, rot);
	var yy = other.gun_ystart + lengthdir_y(20 + cur_f, rot);
	
	// Changes the knife position
	x = xx;
	y = yy;
	image_yscale = other.image_xscale;
	image_angle = rot;
}

// Moves the player's damage mask
with (damage_mask)
{
	x = other.x;
	y = other.y;
}
