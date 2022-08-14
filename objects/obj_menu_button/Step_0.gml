var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);

hover = point_in_rectangle(_mouse_x, _mouse_y, draw_x, draw_y, draw_x + draw_w, draw_y + draw_h);
lclick = mouse_check_button_pressed(mb_left);
rclick = mouse_check_button_pressed(mb_right);

if (hover && lclick && !used)
{
	script_execute(script_exe);
}
