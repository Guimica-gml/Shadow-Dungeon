/// @description Init
juice_create();

// Movement
hspd = 0;
vspd = 0;
spd = 4;
dead = false;
light_range = 100;

// Weapon
global.knife = instance_create_layer(x, y, "Instances", obj_knife);
gun_xstart = 0;
gun_ystart = 0;
can_shoot = true;
recoil = 0;
increase_rot = 0;

// Flutuate Sprite
ac_flutuate_channel = animcurve_get_channel(ac_bounce, 0);
flutuate_sprite = noone;
pos = 0;

// Damage
damage_mask = instance_create_layer(x, y, "Instances", obj_player_mask)
taking_damage = false;
dir_dam = 0;

/// @description Throws the current weapon on ground
/// @method throw_weapon()
throw_weapon = function()
{
	var range = 10;
	var _x = x + irandom_range(-range, range);
	var _y = y - 10 + irandom_range(-range, range);
	var inst = instance_create_layer(_x, _y, "Instances", obj_gun);
	with (inst) {
		weapon_info = global.current_weapon;
		juice_apply(1.2, 1.2, 1, 1, 1, 0);
	}
	global.current_weapon = noone;
};
