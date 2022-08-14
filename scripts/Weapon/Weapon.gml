// All weapons
#macro PISTOL new Weapon(1, spr_pistol, 20, 10, 15, 20)
#macro DEAGLE new Weapon(2, spr_deagle, 20, 10, 15, 12)
#macro MACHINEGUN new Weapon(1, spr_machinegun, 15, 35, 15, 30)
#macro SHOTGUN new Weapon(3, spr_shotgun, 40, 30, 10, 10)
#macro SNIPER new Weapon(4, spr_sniper, 40, 40, 20, 10)

function Weapon(damage, sprite, cooldown, recoil, speed, bullet) constructor
{
	self.sprite = sprite;
	self.cooldown = cooldown;
	self.recoil = recoil;
	self.speed = speed;
	self.bullet = bullet;
	self.max_bullet = self.bullet;
	self.bullet_case = 2;
	self.level = 0;
	self.damage = damage;
}
