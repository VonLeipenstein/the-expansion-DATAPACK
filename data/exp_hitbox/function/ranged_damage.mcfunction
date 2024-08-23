# merge the new health with the hitbox
execute store result score @s exp.damage run data get entity @e[type=#impact_projectiles,distance=..0.1,limit=1,sort=nearest] damage