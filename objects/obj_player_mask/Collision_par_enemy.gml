if !obj_player.dano and other.can_cause_dam and !obj_player.dead {
	var otherx = other.x
	var othery = other.y
	with obj_player {
		audio_play_sound(sfx_player_damage,1,false)
		dir_dam = point_direction(
			otherx,othery,
			obj_player.x,obj_player.y
		)
		if global.current_weapon {
			global.current_weapon.level++
		}
		else {
			global.knife_level++
		}
		juice_apply(1.4,1.4,1,1,1,0)
		dano = true
		global.hp--
	}
	if other.object_index == obj_ghost_bullet {
		instance_destroy(other)
	}
	else {
		with other {
			stop = true
			can_cause_dam = false
			alarm[1] = 30
		}
	}
}