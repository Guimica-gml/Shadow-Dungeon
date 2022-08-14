juice_step();

if (!instance_exists(obj_player))
{
	exit;
}

if (x != obj_player.x)
{
	image_xscale = -sign(obj_player.x - x);
}

if (hp <= 0)
{
	instance_destroy();
}

can_take_damage = false;

switch (state)
{
	case BOSS_STATES.idle:
		can_take_damage = true;
		anim_curve_value = animcurve_channel_evaluate(anim_channel, pos) * 5;
		x = xstart + anim_curve_value;
		pos += 0.025;
		pos = pos mod 1;
		player_dir = point_direction(x, y, obj_player.x, obj_player.y);
		if (!started)
		{
			alarm[0] = 60;
			started = true;
		}
	break;
	case BOSS_STATES.teleport:
		if (!teleport)
		{
			if (apply)
			{
				juice_apply(xscale, yscale, 0, 0, 0, 1);
				apply = false;
			}
			if (xscale < 0.1) teleport = true;
		}
		else
		{
			juice_apply(0, 0, 1, 1, 1, 0);
			x = teleport_x;
			y = teleport_y;
			state = teleport_goto_state;
			teleport = false;
			apply = true;
		}
	break;
	case BOSS_STATES.dash:
		if (dash)
		{
			x += lengthdir_x(10, player_dir);
			y += lengthdir_y(10, player_dir);
			var new_xscale = -sign(dcos(player_dir));
			if (new_xscale != 0) image_xscale = new_xscale;
		}
		light_range = max_light_range * xscale;
		if (alarm[2] == -1) alarm[2] = 40;
		if (alarm[8] == -1) alarm[8] = 10;
	break;
	case BOSS_STATES.spawn:
		if (!in_pos && x == room_width*0.5 + 32) in_pos = true;
		if (!in_pos)
		{
			teleport_x = (room_width * 0.5) + 32;
			teleport_y = 128;
			teleport_goto_state = BOSS_STATES.spawn;
			state = BOSS_STATES.teleport;
		}
		else
		{
			if (spawn_enemy)
			{
				alarm[3] = 30;
				alarm[4] = 60;
				alarm[10] = 05;
				spawn_enemy = false;
			}
			if (check_enemy && instance_number(par_enemy_damage) == 1)
			{
				teleport_x = xstart;
				teleport_y = ystart;
				started = false;
				teleport_goto_state = BOSS_STATES.idle;
				state = BOSS_STATES.teleport;
				check_enemy = false;
				spawn_enemy = true;
				in_pos = false;
				alarm[4] = -1;
			}
		}
	break;
	case BOSS_STATES.fire:
		if (!in_mid && x == room_width * 0.5 + 32) in_mid = true;
		if (!in_mid)
		{
			teleport_x = (room_width * 0.5) + 32;
			teleport_y = room_height * 0.5;
			teleport_goto_state = BOSS_STATES.fire;
			state = BOSS_STATES.teleport;
		}
		else
		{
			if (start_firing)
			{
				alarm[5] = 30;
				alarm[6] = 200;
				start_firing = false;
			}
			if (goto_idle)
			{
				alarm[5] = -1;
				start_firing = true;
				goto_idle = false;
				in_mid = false;
				teleport_x = xstart;
				teleport_y = ystart;
				started = false;
				teleport_goto_state = BOSS_STATES.idle;
				state = BOSS_STATES.teleport;
			}
		}
	break;
}
