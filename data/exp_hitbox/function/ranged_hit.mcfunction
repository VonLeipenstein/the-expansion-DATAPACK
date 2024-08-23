execute unless score @s exp.iframes matches 1.. run function exp_hitbox:ranged_damage

execute as @e[type=#impact_projectiles,distance=..0.1,limit=1,sort=nearest] run function exp_hitbox:projectile_bounce