# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/structure_scan/calculate_offset
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/drone_pet/structure_scan/initiate (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute positioned ~ ~ ~10 store result score @s exp.z run locate structure #expansion:drone_locate
execute positioned ~10 ~ ~ store result score @s exp.x run locate structure #expansion:drone_locate

scoreboard players operation @s exp.x -= @s exp.distance
scoreboard players operation @s exp.z -= @s exp.distance

execute if score @s exp.distance matches 100.. if score @s exp.x matches -10..10 if score @s exp.z matches -10..10 unless entity @s[scores={exp.x=0,exp.z=0}] run tag @s add exp.located_structure

execute if score @s exp.distance matches ..99 if score @s exp.x matches -10..10 if score @s exp.z matches -10..10 unless entity @s[scores={exp.x=0,exp.z=0}] run tellraw @p[predicate=expansion:compare_score/unique_id,tag=exp.has_active_drone] [{text:"[",color:"green"},{selector:"@s",color:"green"},{translate:"exp_drone_found",color:"green"}]

execute unless entity @s[scores={exp.x=-10..10,exp.z=-10..10}] run tellraw @p[predicate=expansion:compare_score/unique_id,tag=exp.has_active_drone] [{text:"[",color:"green"},{selector:"@s",color:"green"},{translate:"exp_drone_error",color:"green"}]
