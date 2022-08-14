if (!obj_player.taking_damage && other.can_cause_dam && !obj_player.dead)
{
	var enemy = other;
	with (obj_player)
	{
		audio_play_sound(sfx_player_damage, 1, false);
		dir_dam = point_direction(enemy.x, enemy.y, obj_player.x, obj_player.y);
		if (global.current_weapon) global.current_weapon.level++ else global.knife_level++;
		juice_apply(1.4, 1.4, 1, 1, 1, 0);
		taking_damage = true;
		global.hp -= enemy.damage;
		if (global.hp <= 0)
		{
			if (!instance_exists(obj_transition))
			{
				with (obj_control)
				{
					alarm[0] = 30;
				}
			}
			with (obj_player)
			{
				sprite_index = spr_player_dead;
				dead = true;
				global.knife = noone;
			}
			instance_destroy(obj_knife);
		}
	}
	if (other.object_index == obj_ghost_bullet)
	{
		instance_destroy(other);
	}
	else
	{
		with (other)
		{
			stop = true;
			can_cause_dam = false;
			alarm[1] = 30;
		}
	}
}
