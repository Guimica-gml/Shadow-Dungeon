juice_create();

can_take_damage = true;
can_take_damage_time = 16;

hp = 1;
object = noone; // Object that this object will create when it's destroyed
alarm[0] = 1;

xx = x; // X position to create the object
yy = y; // Y position to create the object

save = function()
{
	return {
		hp: hp
	};
}

load = function(struct)
{
	hp = struct.hp;
}
