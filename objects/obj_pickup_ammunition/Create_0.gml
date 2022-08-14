event_inherited();

when_used = function()
{
	if (!used && global.current_weapon)
	{
		obj_player.flutuate_sprite = spr_button_e;
		if (keyboard_check_pressed(global.key_interact))
		{
			audio_play_sound(sfx_catching_item, 1, false);
			global.current_weapon.bullet_case++;
			juice_apply(1.4, 1.4, 0, 1, 1, 1);
			alarm[0] = destroy_time;
			used = true;
		}
	}
};
