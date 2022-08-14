event_inherited();

when_used = function()
{
	if (global.hp < global.max_hp && !used)
	{
		obj_player.flutuate_sprite = spr_button_e;
		if (keyboard_check_pressed(global.key_interact))
		{
			audio_play_sound(sfx_catching_item, 1, false);
			global.hp++;
			if (global.current_weapon)
			{
				global.current_weapon.level = max(global.current_weapon.level - 1, 0);
			}
			else
			{
				global.knife_level = max(global.knife_level - 1, 0);
			}
			juice_apply(1.4, 1.4, 0, 1, 1, 1);
			alarm[0] = destroy_time;
			used = true;
		}
	}
};
