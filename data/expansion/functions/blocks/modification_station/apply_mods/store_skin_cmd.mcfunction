data modify entity @s ArmorItems[3].tag.ModStorage.skin set from block ~ ~ ~ Items[{Slot:5b}]

execute store result score @s exp.spaceship_cmd run data get entity @s ArmorItems[3].tag.ModStorage.skin.tag.CustomModelData
scoreboard players add @s exp.spaceship_cmd 1
execute store result entity @s ArmorItems[3].tag.ModStorage.skin.tag.CustomModelData int 1 run scoreboard players get @s exp.spaceship_cmd