juice_step();

hspd = 0;
vspd = 0;

if (can_shoot && !stop && instance_exists(obj_player) && distance_to_object(obj_player) <= 250)
{
	if (!collision_line(x, y, obj_player.x, obj_player.y-20, par_collision, true, true))
	{
		var _dir = point_direction(x, y, obj_player.x, obj_player.y-20);
		create_bullet(x, y, damage, 10, _dir, obj_ghost_bullet);
		can_shoot = false;
		alarm[0] = 90;
	}
}

switch (state)
{
	case ENEMY_STATES.idle:
		
		if (instance_exists(obj_player) && distance_to_object(obj_player) <= distance)
		{
			state = ENEMY_STATES.moving;
		}
		
	break;
	case ENEMY_STATES.moving:
		
		dir = point_direction(obj_player.x, obj_player.y - 20, x, y);
		var dist = distance_to_point(obj_player.x, obj_player.y - 20);
		var nx = x + lengthdir_x(spd, dir);
		var ny = y + lengthdir_y(spd, dir)
		
		if (!stop && dist > spd && !place_meeting(nx, ny, par_enemy))
		{
			hspd = lengthdir_x(spd, dir);
			vspd = lengthdir_y(spd, dir);
		}
		
		if (distance_to_object(obj_player) > distance)
		{
			state = ENEMY_STATES.idle;
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
			state = ENEMY_STATES.idle;
			taking_damage = false;
			dir = 0
		}
		
	break;
}
