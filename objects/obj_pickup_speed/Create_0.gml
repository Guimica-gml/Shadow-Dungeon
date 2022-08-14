event_inherited();

when_used = function()
{
	if (used)
	{
		exit;
	}
	
	with (obj_player)
	{
		flutuate_sprite = spr_button_e;
		if (!keyboard_check_pressed(global.key_interact))
		{
			exit;
		}
		
		audio_play_sound(sfx_catching_item, 1, false);
		spd += 0.2;
		if (global.current_weapon)
		{
			global.current_weapon.level = max(global.current_weapon.level - 1, 0);
		}
		else
		{
			global.knife_level = max(global.knife_level - 1, 0);
		}
	}
	
	juice_apply(1.4, 1.4, 0, 1, 1, 1);
	alarm[0] = destroy_time;
	used = true;
};
