// Cleans the memory (to avoid memory leaks)
if (surface_exists(pause_surf))
{
	surface_free(pause_surf);
}

delete_fonts();
destroy_particles();

// Stop all audios
audio_stop_all();

save_player_preferences();
