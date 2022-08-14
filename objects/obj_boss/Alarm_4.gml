var _dir = point_direction(x, y, obj_player.x, obj_player.y-20);
create_bullet(x, y, 1, 10, _dir, obj_ghost_bullet);
alarm[4] = 60;
