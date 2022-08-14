/// @description Creates an instance of transition between rooms
/// @param {asset} goal - The room to transition to
/// @param {real} goal_x - The x position of the player in the new room
/// @param {real} goal_y - The y position of the player in the new room
function create_transition(_goal, _goal_x, _goal_y)
{
	var inst = instance_create_layer(0, 0, "Transition", obj_transition);
	with (inst)
	{
		goal = _goal;
		goal_x = _goal_x;
		goal_y = _goal_y;
	}
	return inst;
}

/// @description Creates an instance of title with a optional subtitle
/// @param {string} layer - The layer of the room to create the title
/// @param {string} title - The text of the title
/// @param {string} subtitle - The text of the subtitle (optional)
function create_title(_layer, _title, _subtitle = "")
{
	var inst = instance_create_layer(0, 0, _layer, obj_title);
	with (inst)
	{
		text = _title;
		subtitle = _subtitle;
	}
	return inst;
}

/// @description Creates an instance of bullet object
/// @param {real} x - The x position to create the bullet
/// @param {real} y - The y position to create the bullet
/// @param {real} damage - The damage of the bullet
/// @param {real} speed - The speed of the bullet
/// @param {real} direction - The direction of the bullet
/// @param {asset} bullet - The object of the bullet
function create_bullet(_x, _y, _damage, _speed, _direction, _bullet)
{
	var inst = instance_create_layer(_x, _y, "Bullet", _bullet);
	with (inst)
	{
		damage = _damage;
		speed = _speed;
		direction = _direction;
		image_angle = _direction;
	}
	return inst;
}

/// @description Creates an instance of menu button
/// @param {real} x - The x position to draw the button
/// @param {real} y - The y position to draw the button
/// @param {real} width - The width of the button
/// @param {real} height - The height of the button
/// @param {string} text - The text that the button will display
/// @param {asset} script - The script that the button will execute when clicked
function create_menu_button(_draw_x, _draw_y, _draw_w, _draw_h, _text, _script)
{
	var inst = instance_create_layer(0, 0, "Control", obj_menu_button);
	with (inst)
	{
		draw_x = _draw_x;
		draw_y = _draw_y;
		draw_w = _draw_w;
		draw_h = _draw_h;
		text = _text;
		script_exe = _script;
	}
	return inst;
}

/// @description Creates an instance of slider
/// @param {real} x - The x position to draw the slider
/// @param {real} y - The y position to draw the slider
/// @param {real} width - The width of the slider
/// @param {string} title - The text that will appear on top of the slider
/// @param {function} on_slider_marker_changed_function - Function that will run when the slider changes
/// @param {function} initial_value - The initial value of the slider's marker from 0 to 1
function create_slider(_draw_x, _draw_y, _draw_w, _title, _on_slider_marker_changed_function, _initial_value = 0)
{
	var slider = instance_create_layer(0, 0, "Control", obj_slider);
	
	with (slider)
	{
		draw_w = _draw_w;
		draw_x = _draw_x;
		draw_y = _draw_y;
		
		title = _title;
		initial_value = _initial_value;
		
		on_slider_marker_changed = _on_slider_marker_changed_function;
	}
	
	return slider;
}
