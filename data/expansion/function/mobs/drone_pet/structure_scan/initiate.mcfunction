# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/structure_scan/initiate
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/drone_pet/structure_scan/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.located_structure

execute store result score @s exp.distance run locate structure #expansion:drone_locate

execute if score @s exp.distance matches 1..1000 run function expansion:mobs/drone_pet/structure_scan/calculate_offset

execute unless score @s exp.distance matches 1..1000 run tellraw @p[tag=exp.has_active_drone] [{text:"[",color:"green"},{selector:"@s",color:"green"},{translate:"exp_drone_cantfind",color:"green"}]

execute at @s run playsound expansion:drone.interact neutral @a ~ ~ ~