taking_damage = true;
hp -= other.damage;
dam_force = other.damage;
instance_destroy(other);

audio_play_sound(sfx_enemy_damage, 1, false);
juice_apply(1.4, 1.4, 1, 1, 1, 0);
dir = point_direction(obj_player.x, obj_player.y, x, y);

state = ENEMY_STATES.damage;
