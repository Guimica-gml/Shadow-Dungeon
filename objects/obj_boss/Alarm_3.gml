alarm[10] = -1;

var enemies = [
	[obj_bat, x+100, y],
	[obj_bat, x-100, y],
	[obj_slime, x, y+100]
];

var enemies_len = array_length(enemies);
for (var i = 0; i < enemies_len; ++i)
{
	var _inst = enemies[i][0];
	var _x = enemies[i][1];
	var _y = enemies[i][2];
	var inst  = instance_create_layer(_x, _y, "Instances", _inst);
	with (inst)
	{
		stop = false;
		juice_apply(0, 0, 1, 1, 1, 0);
		state = ENEMY_STATES.moving;
	}
}

check_enemy = true;
