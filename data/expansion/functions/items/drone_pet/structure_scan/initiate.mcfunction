tag @s remove exp.located_structure

execute store result score @s exp.distance run locate structure #expansion:drone_locate

execute if score @s exp.distance matches 1..1000 run function expansion:items/drone_pet/structure_scan/calculate_offset

execute unless score @s exp.distance matches 1..1000 run tellraw @p[tag=exp.has_active_drone] [{"text":"[","color":"green"},{"selector":"@s","color":"green"},{"translate":"exp_drone_cantfind","color":"green"}]

execute at @s run playsound expansion:drone.interact neutral @a ~ ~ ~