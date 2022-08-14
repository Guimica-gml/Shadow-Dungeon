juice_step();

hspd = 0;
vspd = 0;

switch (state)
{
	case ENEMY_STATES.idle:
		if (instance_exists(obj_player) && distance_to_object(obj_player) <= distance)
		{
			state = ENEMY_STATES.moving;
		}
		
		break;
	case ENEMY_STATES.moving:
		dir = point_direction(x, y, obj_player.x, obj_player.y - 20);
		var dist_to_pl = distance_to_point(obj_player.x, obj_player.y - 20);
		var nx = x + lengthdir_x(spd, dir);
		var ny = y + lengthdir_y(spd, dir);
		
		if (!stop && dist_to_pl > spd && !place_meeting(nx, ny, par_enemy))
		{
			hspd = lengthdir_x(spd, dir);
			vspd = lengthdir_y(spd, dir);
		}
		
		break;
	case ENEMY_STATES.damage:
		var nx = x + lengthdir_x(spd, dir);
		var ny = y + lengthdir_y(spd, dir);
		
		if (!place_meeting(nx, ny, par_enemy))
		{
			hspd = lengthdir_x(dam_force, dir);
			vspd = lengthdir_y(dam_force, dir);
		}
		
		if (hp <= 0) instance_destroy();
		if (xscale < 1.1)
		{
			taking_damage = false;
			state = ENEMY_STATES.moving;
			dir = 0;
		}
		
		break;
}
