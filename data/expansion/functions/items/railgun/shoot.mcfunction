#kill @e[type=area_effect_cloud,tag=exp.railgun_ray]
summon area_effect_cloud ~ ~1.75 ~ {Duration:1,Tags:[exp.railgun_ray]}
tp @e[tag=exp.railgun_ray,limit=1,sort=nearest] @s
execute at @s anchored eyes run tp @e[tag=exp.railgun_ray,limit=1,sort=nearest] ^ ^ ^2
tag @s add exp.shooting
execute as @e[tag=exp.railgun_ray,limit=1,sort=nearest] at @s run function expansion:items/railgun/loop
tag @s remove exp.shooting
execute at @s anchored eyes positioned ^ ^ ^9 run function expansion:items/railgun/shoot_particles1
execute at @s anchored eyes positioned ^ ^ ^6 run function expansion:items/railgun/shoot_particles2
execute at @s anchored eyes positioned ^ ^ ^3 run function expansion:items/railgun/shoot_particles3
tp @s ~ ~ ~ ~ ~-2
scoreboard players set @s exp.cooldown 20
scoreboard players remove @s exp.ammo 1
execute store result storage expansion:ammo data.ammo byte 1 run scoreboard players get @s exp.ammo
item modify entity @s weapon.mainhand expansion:railgun/ammo
