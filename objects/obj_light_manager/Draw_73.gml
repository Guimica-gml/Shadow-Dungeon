if (!surface_exists(light_surface))
{
	exit;
}

surface_set_target(light_surface); // Sets the surface
draw_clear_alpha(clean_color, 0);  // Clean the screen

// Position of the camera
with (obj_camera)
{
	var cam_x = x - view_widht * 0.5;
	var cam_y = y - view_height * 0.5;
}

gpu_set_blendmode(bm_subtract)
for (var i = 0; i < draw_light_pos_len; ++i)
{
	var _x = draw_light_pos[i].x - cam_x;
	var _y = draw_light_pos[i].y - cam_y;
	draw_circle_color(_x, _y, 120, c_white, c_black, false);
}

// Draws the circle on each object
for (var i = 0; i < obj_num; ++i)
{
	with (objects[i])
	{
		var _x = (x - cam_x);
		var _y = (y - (sprite_height * 0.5)) - cam_y;
		draw_circle_color(_x, _y, light_range, c_white, c_black, false);
	}
}

surface_reset_target()

draw_surface(light_surface, cam_x, cam_y); // Draws the surface on screen
gpu_set_blendmode(bm_normal);              // Set blendmode to normal
