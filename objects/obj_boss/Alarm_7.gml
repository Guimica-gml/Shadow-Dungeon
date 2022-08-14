dash = true;
player_dir = point_direction(x, y, obj_player.x, obj_player.y);
dash_num += 1;

if (dash_num > 4)
{
	teleport_x = xstart;
	teleport_y = ystart;
	teleport_goto_state = BOSS_STATES.idle;
	started = false;
	state = BOSS_STATES.teleport;
	dash_num = 0;
}
