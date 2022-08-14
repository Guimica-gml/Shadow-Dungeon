/// @description Saves the instances in the room
function save_room_info()
{
	// Gets the room name in string
	var _room = room_get_name(room);
	
	// Gets the objects to save
	var save_obj = tag_get_asset_ids("save", asset_object);
	var save_obj_len = array_length(save_obj);
	var has_objects_to_save = false;
	
	// Creates the array that will hold all the objects we are going to save
	var array_root = [];
	
	// Loops through each entry of the array
	for (var i = 0; i < save_obj_len; ++i)
	{
		with (save_obj[i])
		{
			has_objects_to_save = true;
			
			// Struct that holds objects info
			// The information saved depends on the instance
			var info = (variable_instance_exists(id, "save")) ? save() : {};
			info.object_index = object_index;
			info.x = x;
			info.y = y;
			
			array_push(array_root, info);
		}
	}
	
	// Add the array_root to main struct (room_info)
	if (has_objects_to_save)
	{
		global.room_info[$ _room] = array_root;
	}
}

/// @description Loads the instances in the room
function load_room_info()
{
	// Gets the room name in string
	var _room = room_get_name(room);
	
	// If the ds_map doesn't have the key it exits the code
	if (is_undefined(global.room_info[$ _room])) exit;
	
	// Gets the objects to save
	var save_obj = tag_get_asset_ids("save", asset_object);
	var save_obj_len = array_length(save_obj);
	
	// Destroy all instances (with "save" tag) in the room
	for (var i = 0; i < save_obj_len; ++i)
	{
		instance_destroy(save_obj[i]);
	}
	
	// Gets the array of objects from the room_info struct
	var array = global.room_info[$ _room];
	var array_size = array_length(array);
	
	// Loops through each entry of the array
	for (var i = 0; i < array_size; ++i)
	{
		// Gets the struct with all objects info
		var info = array[i];
		
		// Create the object
		var inst = instance_create_layer(info.x, info.y, "Instances", info.object_index);
		with (inst)
		{
			if (variable_instance_exists(id, "load"))
			{
				load(info);
			}
		}
	}
}

/// @description Saving player preferences
function save_player_preferences()
{
	// These are the variables that are going to be saved, all variables need to be global
	// The name of the entry needs to be the same name of the variable
	var struct = {
		music_volume: global.music_volume,
		sound_effects_volume: global.sound_effects_volume
	};
	
	// Saves the variables in a json file
	var string_struct = json_stringify(struct);
	var file = file_text_open_write("preferences.json");
	file_text_write_string(file, string_struct);
	file_text_close(file);
}

/// @description Loading player preferences
function load_player_preferences()
{
	if (!file_exists("preferences.json")) exit;
	
	// Gets the dictionary with the saved preferences
	var file = file_text_open_read("preferences.json");
	var string_struct = file_text_read_string(file);
	var struct = json_parse(string_struct);
	var struct_count = variable_struct_names_count(struct);
	var struct_variables = variable_struct_get_names(struct);
	file_text_close(file);
	
	// Loads all variables inside the struct
	for (var i = 0; i < struct_count; ++i)
	{
		var variable_name = struct_variables[i];
		variable_global_set(variable_name, struct[$ variable_name]);
	}
}
