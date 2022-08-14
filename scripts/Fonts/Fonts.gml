/// @description Creates all fonts in game
function create_fonts()
{
	global.fonts = {
		GUI: font_add("PressStart2P.ttf", 20, 0, 0, 48, 128),
		title: font_add("PressStart2P.ttf", 60, 0, 0, 48, 128),
		level: font_add("PressStart2P.ttf", 10, 0, 0, 48, 128),
		tutorial: font_add("PressStart2P.ttf", 06, 0, 0, 48, 128)
	};
}

/// @description Deletes all fonts in game
function delete_fonts()
{
	var font_names = variable_struct_get_names(global.fonts);
	var font_names_len = array_length(font_names);
	
	for (var i = 0; i < font_names_len; ++i)
	{
		var name = font_names[i];
		font_delete(global.fonts[$ name]);
	}
}
