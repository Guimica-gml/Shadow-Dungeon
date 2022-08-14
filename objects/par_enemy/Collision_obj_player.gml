if object_index != obj_ghost_bullet {
	dir_player  = point_direction(
		obj_player.x,obj_player.y,
		other.x,other.y
	)
	tras = true
	alarm[1] = 20
}