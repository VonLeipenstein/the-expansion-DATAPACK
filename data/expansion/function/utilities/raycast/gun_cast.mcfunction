summon minecraft:marker ~ ~ ~ {Tags:["exp.freeze_ray"]}
tp @e[type=minecraft:marker,tag=exp.freeze_ray,limit=1,sort=nearest] @s
execute at @s anchored eyes run tp @e[type=minecraft:marker,tag=exp.freeze_ray,limit=1,sort=nearest] ^-0.4 ^-1 ^1
execute as @e[type=minecraft:marker,tag=exp.freeze_ray,limit=1,sort=nearest] at @s run function expansion:utilities/raycast/particle_loop