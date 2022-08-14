if can_take_damage {
	hp -= global.current_weapon.damage + global.current_weapon.level*0.5
	juice_apply(1,1,1,1,1,0)
	can_take_damage = false
}