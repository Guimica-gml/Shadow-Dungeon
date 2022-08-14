global.knife = noone
instance_destroy(obj_knife)

global.current_weapon = MACHINEGUN
global.current_weapon.level = 3
global.current_weapon.bullet_case = 10

with (obj_camera) { target = id }
with (par_enemy) { stop = false }
