if (global.current_knife_force > global.knife_force - 4)
{
	with (obj_boss)
	{
		if (can_take_damage)
		{
			audio_play_sound(sfx_enemy_damage, 1, false);
			juice_apply(1.2, 1.2, 1, 1, 1, 0);
			hp -= global.knife_damage + global.knife_level * 0.5;
			can_take_damage = false;
			alarm[9] = 15;
		}
	}
}
