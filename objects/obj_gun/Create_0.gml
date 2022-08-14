juice_create();

weapon_info = noone; // Struct with weapon info
alarm[0] = 1;
caught = false;      // If the item was caught
have_depth = false;  // If the item has depth

save = function()
{
	return {
		weapon_info: weapon_info,
		have_depth: have_depth
	};
};

load = function(struct)
{
	weapon_info = struct.weapon_info;
	have_depth = struct.have_depth;
};
