execute if score @s exp.timer_1 matches 10.. run summon minecraft:marker ~ ~ ~ {Tags:["exp.terraformer"]}

execute if score @s exp.counter_1 matches 0 at @s[scores={exp.counter_1=0}] run spreadplayers ~ ~ 0 40 false @e[type=marker,tag=exp.terraformer,limit=1,sort=nearest]
execute if score @s exp.counter_1 matches 1 run spreadplayers ~ ~ 0 24 false @e[type=marker,tag=exp.terraformer,limit=1,sort=nearest]
execute if score @s exp.counter_1 matches 0 run kill @e[type=marker,tag=exp.terraformer,distance=40..,limit=1,sort=nearest]

execute as @e[type=marker,tag=exp.terraformer,limit=1,sort=nearest] at @s run function expansion:blocks/terraformer/terraformers/moon_plant_placer
