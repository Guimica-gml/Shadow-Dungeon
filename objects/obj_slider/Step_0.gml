// Checks if player is interacting with the slider
if (interacting)
{
	// If player releases the left button the marker stops
	if (mouse_check_button_released(mb_left))
	{
		interacting = false;
	}
	
	// Sets the marker_x to the mouse x position and limit it to the borders of the slider
	marker_x = device_mouse_x_to_gui(0);
	marker_x = clamp(marker_x, draw_x, draw_x + draw_w);
	
	on_slider_marker_changed((marker_x - draw_x) / draw_w);
	exit;
}

var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);
var _mouse_l = mouse_check_button_pressed(mb_left);

if (_mouse_l && point_in_rectangle(_mouse_x, _mouse_y, draw_x, draw_y, draw_x + draw_w, draw_y + draw_h))
{
	interacting = true;
}
