execute store result score @s exp.spaceship_cmd run data get entity @s ArmorItems[3].tag.CustomModelData
scoreboard players remove @s exp.spaceship_cmd 1
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s exp.spaceship_cmd
