if (global.pause && !surface_exists(pause_surf))
{
	pause_surf = surface_create(view_wport[0], view_hport[0]);
	
	var pause_buffer = buffer_load("pause_buffer");
	buffer_set_surface(pause_buffer, pause_surf, 0);
	buffer_delete(pause_buffer);
}
