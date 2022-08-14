/// @description Init
// The surface where light will be drawn
light_surface = -1;

// The amount of white that will be cleaned of the screen
var qnt_white = 220;
clean_color = make_color_rgb(qnt_white, qnt_white, qnt_white);

// The objects to have light
objects = tag_get_asset_ids("light", asset_object);
obj_num = array_length(objects);

draw_light_pos = [];
draw_light_pos_len = 0;

/// @description Stores the position of tiles with light in an array (draw_light_pos)
/// @method update_draw_light_pos()
update_draw_light_pos = function()
{
	var cell_sz = 32;
	var tile_id = layer_tilemap_get_id("TileLight");
	draw_light_pos = [];
	
	for (var _x = 0; _x < room_width / cell_sz; ++_x)
	{
		for (var _y = 0; _y < room_height / cell_sz; ++_y)
		{
			if (tilemap_get_at_pixel(tile_id, (cell_sz * _x), (cell_sz * _y)))
			{
				var position = {
					x: (cell_sz * _x) + (cell_sz * 0.5),
					y: (cell_sz * _y) + (cell_sz * 0.5)
				};
				array_push(draw_light_pos, position);
			}
		}
	}
	draw_light_pos_len = array_length(draw_light_pos);
};
