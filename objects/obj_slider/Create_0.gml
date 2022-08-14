/// @description Init

// Coords and size of the slider (height is always the same)
draw_x = 0;
draw_y = 0;
draw_w = 0;
draw_h = 16;

// Text that appears above the slider
title = "";

// The x position of the marker
initial_value = 0;
marker_x = 0;
alarm[0] = 1;

// If player is interacting with the slider
interacting = false;
on_slider_marker_changed = noone;

/// @description Sets the marker's x position
/// @method set_marker_position(position)
/// @param position - The marker position at the slider from 0 to 1
set_marker_position = function(position)
{
	marker_x = draw_x + (draw_w * position);
}
