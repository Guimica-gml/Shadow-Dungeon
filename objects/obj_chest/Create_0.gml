juice_create();

randomize();
drops = choose(PISTOL, MACHINEGUN, SNIPER, DEAGLE, SHOTGUN);
opened = false;

open = function()
{
	juice_apply(1, 1, 1, 1, 1, 0);
	var inst = instance_create_layer(x, y + 1, "Instances", obj_gun);
	inst.have_depth = true;
	inst.weapon_info = drops;
	image_index = 1;
	opened = true;
}

save = function()
{
	return {
		opened: opened,
		image_index: image_index
	};
};

load = function(struct)
{
	opened = struct.opened;
	image_index = struct.image_index;
};
