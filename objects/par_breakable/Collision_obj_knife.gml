// Takes damage
if (can_take_damage && global.current_knife_force > global.knife_force - 6)
{
	audio_play_sound(sfx_enemy_damage, 1, false);
	hp -= global.knife_damage + global.knife_level*0.5;
	if (hp <= 0)
	{
		instance_destroy();
	}
	juice_apply(1, 1, 1, 1, 1, 0);
	can_take_damage = false;
	alarm[1] = can_take_damage_time;
}
