// Destroys the damage mask if it exists
if (instance_exists(damage_mask))
{
	instance_destroy(damage_mask);
	damage_mask = noone;
}

// Destroys the knife if it exists
if (instance_exists(global.knife))
{
	instance_destroy(global.knife);
	global.knife = noone;
}
