event_inherited();

hp = 6;
state = ENEMY_STATES.idle;
distance = 200;
spd = 3;

create_child = function(_x, _y)
{
	var inst = instance_create_layer(_x, _y, "Instances", obj_slime);
	with (inst)
	{
		juice_apply(0, 0, 1, 1, 1, 0);
		image_xscale = 0.7;
		image_yscale = 0.7;
		hp = 3;
		stop = instance_exists(obj_transition);
		state = ENEMY_STATES.moving;
	}
};

save = function()
{
	return {
		state: state,
		hp: hp,
		image_xscale: image_xscale,
		image_yscale: image_yscale
	};
};

load = function(struct)
{
	state = struct.state;
	hp = struct.hp;
	image_xscale = struct.image_xscale;
	image_yscale = struct.image_yscale;
};
