// Takes damage
audio_play_sound(sfx_enemy_damage, 1, false);
hp -= other.damage;
if (hp <= 0)
{
	instance_destroy();
}
juice_apply(1, 1, 1, 1, 1, 0);
