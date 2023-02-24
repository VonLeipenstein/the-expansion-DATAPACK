tag @e[type=armor_stand,tag=exp.mod_ship,limit=1,sort=nearest] add exp.being_modified
tag @s add exp.modifying_ship


execute if block ~ ~ ~ barrel{Items:[{Slot:5b,tag:{spaceship_skin:1b}}]} run data modify entity @s ArmorItems[3].tag.UpgradeStorage.skin.CustomModelData set from block ~ ~ ~ Items[{Slot:5b}].tag.CustomModelData

execute store result score @s exp.spaceship_cmd run data get entity @s ArmorItems[3].tag.UpgradeStorage.skin.CustomModelData
scoreboard players add @s exp.spaceship_cmd 1
execute store result entity @s ArmorItems[3].tag.UpgradeStorage.skin.CustomModelData int 1 run scoreboard players get @s exp.spaceship_cmd