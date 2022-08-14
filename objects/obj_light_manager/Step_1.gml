// If the surface doesn't exists creates a new one
if (!surface_exists(light_surface))
{
	light_surface = surface_create(view_wport[0], view_hport[0]);
}
