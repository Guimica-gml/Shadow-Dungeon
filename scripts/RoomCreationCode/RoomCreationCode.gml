/// @description Creates all objects for menu
function create_menu()
{
	// Creates the title objects
	create_title("Instances", "Shadow Dungeon");
	
	// Create the sliders
	var sliders_x = view_wport[0] - 120;
	var sliders_w = 100;
	
	create_slider(sliders_x, view_hport[0] - 30, sliders_w, "Sound Effects", on_sound_effects_slider_changed, global.sound_effects_volume);
	create_slider(sliders_x, view_hport[0] - 60, sliders_w, "Music Effects", on_music_slider_changed, global.music_volume);
	
	// Objects that the code will create [text, script]
	var button = [
		["JOGAR", start_game],
		["CRÉDITOS", goto_rm_credits],
		["SAIR", exit_game]
	];
	
	// Gets coords for the initial position of the menu buttons
	var start_x = (view_wport[0] * 0.5);
	var start_y = (view_hport[0] * 0.5) - 50;
	var width = 300;
	var height = 100;
	var sep = 10;
	
	var button_len = array_length(button);
	var i = 0; repeat (button_len)
	{
		var _x = start_x - (width * 0.5);
		var _y = start_y + (height * i) + (sep * i);
		create_menu_button(_x, _y, width, height, button[i][0], button[i][1]);
		i++;
	}
}

/// @description Creates all objects for credits
function create_credits()
{
	// Creates the object for credits
	instance_create_layer(0, 0, "Control", obj_credits);
	
	// Creates the object for title
	create_title("Instances", "Créditos");
	
	// Creates the button that returns to the rm_menu
	var _widht = 300;
	var _height = 120;
	var _x = 20;
	var _y = view_hport[0] - _height - _x;
	create_menu_button(_x, _y, _widht, _height, "Voltar", goto_rm_menu);
}

/// @description Creates all objects for gameover
function create_gameover()
{
	// Destoying the player instance (he is here for some reason)
	instance_destroy(obj_player);
	
	// If player's hp is greater than zero the player wins
	var _title = (global.hp <= 0) ? "FIM DE JOGO" : "VOCÊ VENCEU";
	
	// Creates the object for title and subtitle
	create_title("Instances", _title, "Aperte 'R' para voltar ao menu.");
}
