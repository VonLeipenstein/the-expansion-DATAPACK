item replace block ~ ~ ~ container.5 with minecraft:jigsaw{gui_item:1b,CustomModelData:124401,display:{Name:'{"text":""}'}}

execute store result score @s exp.spaceship_cmd run data get entity @s item.tag.ModStorage.skin.tag.CustomModelData
scoreboard players remove @s exp.spaceship_cmd 1
execute store result entity @s item.tag.ModStorage.skin.tag.CustomModelData int 1 run scoreboard players get @s exp.spaceship_cmd

data modify block ~ ~ ~ Items[{Slot:5b}] set from entity @s item.tag.ModStorage.skin
data remove entity @s item.tag.ModStorage.skin

# update the cmd of the spaceship
data modify entity @s item.tag.CustomModelData set value 1012003