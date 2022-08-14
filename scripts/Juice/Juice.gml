/// @description Creates all variables for juice
function juice_create()
{
	xscale = 1;
	yscale = 1;
	xscale_target = 1;
	yscale_target = 1;
	scale_speed = 0.1;
	alpha_speed = 0.1;
	alpha_target = 0;
	color = c_white;
	alpha = 0;
}

/// @description Runs in step event of all objects with juice
function juice_step()
{
	xscale = lerp(xscale, xscale_target, scale_speed);
	yscale = lerp(yscale, yscale_target, scale_speed);
	alpha = lerp(alpha, alpha_target, alpha_speed);
}

/// @description Draws the object sprite with juice animations
/// @param {real} x - The x position to draw the instance
/// @param {real} y - The y position to draw the instance
function juice_draw(_x, _y)
{
	if (sprite_index)
	{
		draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale * xscale, image_yscale * yscale, image_angle, image_blend, image_alpha);
		if (alpha > 0)
		{
			shader_set(shd_blend);
			draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale * xscale, image_yscale * yscale, image_angle, color, alpha);
			shader_reset();
		}
	}
}

/// @description Used to applies the juice in object
/// @param {real} xscale - The initial x scale
/// @param {real} yscale - The initial y scale
/// @param {real} xscale_target - The x scale when the animation finishes
/// @param {real} yscale_target - The y scale when the animation finishes
/// @param {real} alpha - The initial transparency
/// @param {real} alpha_target - The transparency when the animation finishes
function juice_apply(_xscale, _yscale, _xscale_target, _yscale_target, _alpha, _alpha_target)
{
	xscale = _xscale;
	yscale = _yscale;
	xscale_target = _xscale_target;
	yscale_target = _yscale_target;
	alpha = _alpha;
	alpha_target  = _alpha_target;
}
