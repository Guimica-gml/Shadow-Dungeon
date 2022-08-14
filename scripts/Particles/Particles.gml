/// @description Creates all particles used in game
function create_particles()
{
	var part_boss_dash = part_type_create();
	part_type_sprite(part_boss_dash, spr_boss, 0, 0, false);
	part_type_alpha2(part_boss_dash, 0.6, 0);
	part_type_life(part_boss_dash, 15, 15);
	
	var part_boss_create = part_type_create();
	part_type_shape(part_boss_create, pt_shape_disk);
	part_type_size(part_boss_create, 0.1, 0.1, 0, 0);
	part_type_alpha2(part_boss_create, 1, 0);
	part_type_life(part_boss_create, 30, 30);
	part_type_color_rgb(part_boss_create, 255, 255, 0, 0, 0, 0);
	part_type_direction(part_boss_create, 0, 359, 0, 0);
	part_type_speed(part_boss_create, 1, 1, 0, 0);
	
	global.particles = {
		boss_dash: part_boss_dash,
		boss_create: part_boss_create
	};
}

/// @description Destroys all particles used in game
function destroy_particles()
{
	var particles_names = variable_struct_get_names(global.particles);
	var particles_names_len = array_length(particles_names);
	
	for (var i = 0; i < particles_names_len; ++i)
	{
		var name = particles_names[i];
		part_type_destroy(global.particles[$ name]);
	}
}
