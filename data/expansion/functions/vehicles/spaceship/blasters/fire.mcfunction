kill @e[type=area_effect_cloud,tag=exp.ship_blaster_ray]
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["exp.ship_blaster_ray","exp.left_ray"]}
execute unless predicate expansion:nbt_checks/armor/bomber run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["exp.ship_blaster_ray","exp.right_ray"]}
tp @e[tag=exp.left_ray,limit=1,sort=nearest] ^0.8 ^0.8 ^3 ~ ~-0.8
tp @e[tag=exp.right_ray,limit=1,sort=nearest] ^-0.8 ^0.8 ^3 ~ ~-0.8
execute as @e[tag=exp.ship_blaster_ray,limit=2,sort=nearest] at @s run function expansion:vehicles/spaceship/blasters/loop
execute as @e[tag=exp.ship_blaster_ray,limit=2,sort=nearest] at @s run function expansion:vehicles/spaceship/blasters/break_block
execute as @e[type=#expansion:sentient,tag=exp.blast_dmg] at @s run function expansion:vehicles/spaceship/blasters/damage
scoreboard players remove @s exp.fuel_level 1

playsound expansion:spaceship.blaster player @a ~ ~ ~ 0.5 1 0.01

