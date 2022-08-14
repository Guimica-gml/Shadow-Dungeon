juice_step();

hspd = 0;
vspd = 0;

if (dead) exit;

// Movementation
var right = keyboard_check(global.key_right);
var left = keyboard_check(global.key_left);
var up = keyboard_check(global.key_up);
var down = keyboard_check(global.key_down);
var mouse_left = mouse_check_button(mb_left);

var xmove = (right - left);
var ymove = (down - up);

var mouse_direction = sign(mouse_x - x);
if (mouse_direction != 0) image_xscale = mouse_direction;

if (global.player_can_move && (xmove != 0 || ymove != 0))
{
	image_speed = (mouse_direction == xmove) ? 1 : -1;
	var dir = point_direction(0, 0, xmove, ymove);
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);
}
else
{
	image_speed = 0;
	image_index = 0;
}

if (taking_damage)
{
	hspd = lengthdir_x(3, dir_dam);
	vspd = lengthdir_y(3, dir_dam);
	if (xscale < 1.1) taking_damage = false;
}

var weapon = global.current_weapon;

// If the player is holding a weapon
if (weapon)
{
	// Shooting
	if (mouse_left && can_shoot && weapon.bullet > 0)
	{
		audio_play_sound(sfx_shoot, 1, false);
		var rotation = point_direction(gun_xstart, gun_ystart, mouse_x, mouse_y);
		var _x = gun_xstart + lengthdir_x(30, rotation);
		var _y = gun_ystart + lengthdir_y(30, rotation);
		var damage = weapon.damage + weapon.level * 0.5;
		
		create_bullet(_x, _y, damage, weapon.speed, rotation, obj_bullet);
		
		recoil = weapon.recoil;
		can_shoot = false;
		alarm[0] = weapon.cooldown;
		weapon.bullet--;
	}
	recoil = max(recoil - 1, 0);
	increase_rot = max(increase_rot - 2, 0);
	
	// Reloanding
	if (weapon.bullet < weapon.max_bullet && weapon.bullet_case > 0)
	{
		if (weapon.bullet == 0)
		{
			flutuate_sprite = spr_button_r;
		}
		
		if (keyboard_check_pressed(global.key_reload))
		{
			weapon.bullet_case--;
			weapon.bullet = weapon.max_bullet;
			recoil = 5;
			increase_rot = 60;
		}
	}
	
	// Throwing weapon
	if (keyboard_check_pressed(global.key_throw))
	{
		throw_weapon();
		global.knife = instance_create_layer(x, y, "Instances", obj_knife);
	}
}

// Catching weapons
var _weapon = collision_circle(x, y - 10, 15, obj_gun, true, true);
if (_weapon && !_weapon.caught)
{
	flutuate_sprite = spr_button_e;
	if (keyboard_check_pressed(global.key_interact))
	{
		audio_play_sound(sfx_catching_item, 1, false);
		instance_destroy(global.knife);
		global.knife = noone;
		
		if (global.current_weapon != noone)
		{
			throw_weapon();
		}
		
		with (_weapon)
		{
			global.current_weapon = weapon_info;
			juice_apply(1.4, 1.4, 0, 1, 1, 1);
			caught = true;
		}
	}
}

// Open chests
var _chest = collision_circle(x, y - 20, 15, obj_chest, true, true);
if (_chest && !_chest.opened)
{
	flutuate_sprite = spr_button_e;
	if (keyboard_check_pressed(global.key_interact))
	{
		_chest.open();
	}
}
