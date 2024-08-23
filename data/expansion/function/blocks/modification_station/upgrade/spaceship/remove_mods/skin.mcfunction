loot replace block ~ ~ ~ container.5 loot expansion:items/gui/filler

execute store result score @s exp.spaceship_cmd run data get entity @s item.components.minecraft:custom_data.ModStorage.skin.components.minecraft:custom_model_data
scoreboard players remove @s exp.spaceship_cmd 1
execute store result entity @s item.components.minecraft:custom_data.ModStorage.skin.components.minecraft:custom_model_data int 1 run scoreboard players get @s exp.spaceship_cmd

data modify block ~ ~ ~ Items[{Slot:5b}] set from entity @s item.components.minecraft:custom_data.ModStorage.skin
data remove entity @s item.components.minecraft:custom_data.ModStorage.skin

# update the cmd of the spaceship
data modify entity @s item.components.minecraft:custom_model_data set value 1012003