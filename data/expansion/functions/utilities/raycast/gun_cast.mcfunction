kill @e[type=area_effect_cloud,tag=exp.ray]
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[exp.ray]}
tp @e[tag=exp.ray,limit=1,sort=nearest] @s
execute at @s anchored eyes run tp @e[tag=exp.ray,limit=1,sort=nearest] ^-0.4 ^-1 ^1
execute as @e[tag=exp.ray,limit=1,sort=nearest] at @s run function expansion:utilities/raycast/particle_loop