/// @description TODO: rewrite this shit

juice_create();

enum BOSS_STATES { teleport, idle, dash, spawn, fire };

state = BOSS_STATES.idle;
max_light_range = 150;
light_range = max_light_range;
can_cause_dam = true;
mask = instance_create_layer(x, y, "Instances", obj_boss_mask);
damage = 1;

// Hp
max_hp = 40;
hp = max_hp;
can_take_damage = true;

// Idle
pos = 0;
anim_curve = animcurve_get(ac_bounce);
anim_channel = animcurve_get_channel(anim_curve, 0);
started = false;

// Dash
dash_num = 0;
player_dir = 0
dash = true;
part = part_system_create();

// Teleport
apply = true;
teleport = false;
teleport_x = 0;
teleport_y = 0;
teleport_goto_state = noone;

// Spawn
check_enemy = false;
spawn_enemy = true;
in_pos = false;

// Fire
bullet_dir = 0;
in_mid = false;
start_firing = true;
goto_idle = false;
