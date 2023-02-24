execute store result score @s exp.spaceship_cmd run data get entity @s item.tag.CustomModelData
scoreboard players add @s exp.spaceship_cmd 1
execute store result entity @s item.tag.CustomModelData int 1 run scoreboard players get @s exp.spaceship_cmd
