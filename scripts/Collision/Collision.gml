/// @description Checks collision with objects and tiles
function move_and_collide()
{
	// Round hspd and vspd
	hspd = round(hspd);
	vspd = round(vspd);
	
	// Checking horizontal collision with tiles
	if (tile_meeting(x + hspd, y, "Collision"))
	{
		while (!tile_meeting(x + sign(hspd), y, "Collision"))
		{
			x += sign(hspd);
		}
		hspd = 0;
	}
	
	// Checking vertical collision with tiles
	if (tile_meeting(x, y + vspd, "Collision"))
	{
		while (!tile_meeting(x, y + sign(vspd), "Collision"))
		{
			y += sign(vspd);
		}
		vspd = 0;
	}
	
	// Checking horizontal collision with objects
	if (place_meeting(x + hspd, y, par_collision))
	{
		while (!place_meeting(x + sign(hspd), y, par_collision))
		{
			x += sign(hspd);
		}
		hspd = 0;
	}
	
	// Checking vertical collision with objects
	if (place_meeting(x, y + vspd, par_collision))
	{
		while (!place_meeting(x, y + sign(vspd), par_collision))
		{
			y += sign(vspd);
		}
		vspd = 0;
	}
	
	// Applies hspd on x and vspd on y
	x += hspd;
	y += vspd;
}

/// @description Checks if the instance is colliding with the given tile
/// @param {real} x the x position to check collision
/// @param {real} y the y position to check collision
/// @param {string} tile the name of the layer with the tileset
function tile_meeting(_x, _y, tile)
{
	var xp, yp, tile_id, meeting;
	
	tile_id = layer_tilemap_get_id(tile);
	
	xp = x;
	yp = y;
	
	x = _x;
	y = _y;
	
	meeting = tilemap_get_at_pixel(tile_id, bbox_right, bbox_top) ||
			  tilemap_get_at_pixel(tile_id, bbox_right, bbox_bottom) ||
			  tilemap_get_at_pixel(tile_id, bbox_left, bbox_top) ||
			  tilemap_get_at_pixel(tile_id, bbox_left, bbox_bottom);
	
	x = xp;
	y = yp;
	
	return meeting;
}
