if (global.current_knife_force > global.knife_force - 4)
{
	taking_damage = true;
	hp -= global.knife_damage + global.knife_level * 0.5;
	dam_force = 3;
	audio_play_sound(sfx_enemy_damage, 1, false);
	juice_apply(1.4, 1.4, 1, 1, 1, 0);
	dir = point_direction(obj_player.x, obj_player.y, x, y);
	state = ENEMY_STATES.damage;
}
