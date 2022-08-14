juice_create();

enum ENEMY_STATES { idle, moving, damage };

hp = 1;
state = ENEMY_STATES.idle;
distance = 0;
spd = 0;
dir = 0;
taking_damage = false;
stop = true;
can_cause_dam = true;
light_range = 100;
dam_force = 0;
damage = 1;

hspd = 0;
vspd = 0;

save = function()
{
	return {
		state: state,
		hp: hp
	};
};

load = function(struct)
{
	state = struct.state;
	hp = struct.hp;
};
