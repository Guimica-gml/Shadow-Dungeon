// Creates the object
if (object != noone)
{
	var inst = instance_create_layer(xx, yy, "Instances", object);
	with (inst)
	{
		if (object_index == obj_bat) stop = false;
		juice_apply(1, 1, 1, 1, 1, 0);
	}
}
