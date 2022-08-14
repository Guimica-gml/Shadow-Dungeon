var objects = tag_get_asset_ids("depth", asset_object);
var obj_num = array_length(objects);
var d_grid = depth_grid;
var inst_num = 1;

d_grid[# 0, 0] = global.knife;
d_grid[# 1, 0] = 100000;

var i = 0; repeat (obj_num)
{
	inst_num += instance_number(objects[i]);
	i++;
}

ds_grid_resize(d_grid, 2, inst_num);

var l = 0, i = 1; repeat (obj_num)
{
	with (objects[l])
	{
		d_grid[# 0, i] = id;
		d_grid[# 1, i] = y;
		i++;
	}
	l++;
}

ds_grid_sort(d_grid, 1, true);

var i = 0; repeat (inst_num)
{
	var inst = d_grid[# 0, i];
	with (inst) event_perform(ev_draw, 0);
	i++;
}
