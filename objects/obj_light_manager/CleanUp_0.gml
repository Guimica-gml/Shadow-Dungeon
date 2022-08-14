// Cleans the memory (to avoid memory leaks)
if (surface_exists(light_surface))
{
	surface_free(light_surface);
}
