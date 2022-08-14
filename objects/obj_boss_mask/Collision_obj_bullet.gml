if (obj_boss.can_take_damage)
{
	var bullet = other;
	with (obj_boss)
	{
		audio_play_sound(sfx_enemy_damage, 1, false);
		juice_apply(1.2, 1.2, 1, 1, 1, 0);
		hp -= bullet.damage;
		instance_destroy(bullet);
		can_take_damage = false;
		alarm[9] = 15;
	}
}
