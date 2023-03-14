# executed as @e[type=minecraft:armor_stand,tag=exp.shield_generator]

execute at @s[scores={exp.timer_1=10..}] run summon minecraft:marker ~ ~ ~ {Tags:["exp.terraformer"]}

execute if score @s exp.counter_1 matches 0 run spreadplayers ~ ~ 0 40 false @e[type=minecraft:marker,tag=exp.terraformer,limit=1,sort=nearest]
execute if score @s exp.counter_1 matches 1 run spreadplayers ~ ~ 0 24 false @e[type=minecraft:marker,tag=exp.terraformer,limit=1,sort=nearest]
execute if score @s exp.counter_1 matches 0 run kill @e[type=minecraft:marker,tag=exp.terraformer,distance=40..,limit=1,sort=nearest]

execute as @e[type=minecraft:marker,tag=exp.terraformer,limit=1,sort=nearest] at @s run function expansion:blocks/terraformer/terraformers/mars_plant_placer