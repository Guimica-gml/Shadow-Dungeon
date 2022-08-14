// Sets and draws the weapon (if the player is holding one)
if (global.current_weapon && !dead)
{
	var yscale = image_xscale;
	var rot = point_direction(gun_xstart, gun_ystart, mouse_x, mouse_y);
	var xx = gun_xstart + lengthdir_x(30 - recoil, rot);
	var yy = gun_ystart + lengthdir_y(30 - recoil, rot);
	var c = c_white
	
	draw_sprite_ext(global.current_weapon.sprite, 0, xx, yy, 1, yscale, rot + (increase_rot * yscale), c, 1);
}

if (flutuate_sprite)
{
	// Gets the position of the sprite from the animation curve
	var _y = animcurve_channel_evaluate(ac_flutuate_channel, pos) * 8;
	pos += 0.025;
	pos = pos mod 1;
	
	// Draws the sprite
	var y_pos = y - sprite_height - _y - 10;
	draw_sprite(flutuate_sprite, 0, x, y_pos);
	flutuate_sprite = noone;
}
