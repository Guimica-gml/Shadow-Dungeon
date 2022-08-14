if can_take_damage and
   global.current_knife_force > global.knife_force-6
{
	hp -= global.knife_damage + global.knife_level*0.5
	juice_apply(1.4,1.4,1,1,1,0)
	can_take_damage = false
}