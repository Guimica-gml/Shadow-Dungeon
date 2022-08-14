// If the game is paused, draws the pause surface
if (surface_exists(pause_surf))
{
	draw_surface_ext(pause_surf, 0, 0, 1, 1, 0, c_dkgray, 1);
}

// Draws the timer in the middle center of the rm_gameover
if (room == rm_gameover)
{
	draw_set_font(global.fonts.GUI);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	
	var s = format_time(second);
	var m = format_time(minute);
	var h = format_time(hour);
	
	draw_text(view_wport[0] * 0.5, view_hport[0] * 0.5 + 100, h + ":" + m + ":" + s);
	
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
}

// If the room has the tag "playable_room"
if (global.room_type == "playable_room")
{
	var b = blend;
	
	// Draws the UI
	
	// Draws player hp
	var i = 0; repeat(global.max_hp)
	{
		var spr = (global.hp > i) ? spr_heart : spr_lost_heart;
		var spr_w = sprite_get_width(spr);
		draw_sprite_ext(spr, 0, hud_x + (5 * i) + (i * spr_w), hud_y, 1, 1, 0, b, 1);
		i++
	}
	
	var bullets, bullet_case, sprite, gun_level;
	if (global.current_weapon)
	{
		// Player is holding a gun
		bullets = global.current_weapon.bullet;
		bullet_case = global.current_weapon.bullet_case;
		sprite = global.current_weapon.sprite;
		gun_level = global.current_weapon.level;
	}
	else
	{
		// Player is holding a knife
		bullets = "--";
		bullet_case = "--";
		sprite = spr_knife;
		gun_level = global.knife_level;
	}
	
	draw_set_font(global.fonts.GUI)
	
	// Draws the amount of bullets player has
	// If player is not holding a gun it shows "--"
	draw_sprite_ext(spr_hud, 0, hud_x + 35, hud_y + 35, 1, 1, 0, b, 1);
	draw_text_color(hud_x + 35, hud_y + 48, bullets, b, b, b, b, 1);
	draw_text_color(hud_x + 35, hud_y + 98, bullet_case, b, b, b, b, 1);
	
	draw_set_font(-1);
	
	var scale = 2;
	var spr_width = 50;
	var str_gun_level = "Level: " + string(round(gun_level));
	
	// Draws the weapon player is holding
	draw_sprite_ext(sprite, 0, hud_x + 110 + spr_width, hud_y + 70, scale, scale, 0, b, 1);
	
	// Draws the level of the gun player is holding
	draw_set_halign(fa_middle);
	draw_set_font(global.fonts.level);
	draw_text_color(hud_x + 110 + spr_width, hud_y + 100, str_gun_level, b, b, b, b, 1);
	draw_set_font(-1);
	draw_set_halign(-1);
	
	// Draws the timer
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	draw_set_font(global.fonts.GUI);
	
	var s = format_time(second);
	var m = format_time(minute);
	var h = format_time(hour);
	
	draw_text_color(view_wport[0] - 20, 20, h + ":" + m + ":" + s, b, b, b, b, 1);
	
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
}
