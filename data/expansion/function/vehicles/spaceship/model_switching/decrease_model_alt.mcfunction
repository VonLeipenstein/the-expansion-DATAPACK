execute store result score @s exp.spaceship_cmd run data get entity @s item.components.minecraft:custom_model_data
scoreboard players remove @s exp.spaceship_cmd 1
execute store result entity @s item.components.minecraft:custom_model_data int 1 run scoreboard players get @s exp.spaceship_cmd
