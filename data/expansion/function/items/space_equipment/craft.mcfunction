# run from the recipes of the fabricator
loot replace entity @s weapon.mainhand loot expansion:armor/space_equipment

execute store result score #input exp.oxygen_lvl run data get block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_data".oxygen_lvl
execute store result score #input exp.oxygen_max run data get block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_data".oxygen_max
execute store result score #temp exp.hold_value run data get block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_data".tier
execute store result score #temp exp.oxygen_percent run function expansion:mechanics/oxygen/oxygen_percentage

execute store result storage expansion:oxygen_calc data.oxygen_lvl int 1 run scoreboard players get @s exp.oxygen_lvl
item modify entity @s weapon.mainhand expansion:oxygen_tank/merge_with_equipment

scoreboard players reset #temp exp.oxygen_percent
scoreboard players reset #output exp.oxygen_percent

# copy the used oxygen tank to the equipment
data modify entity @s HandItems[0].components."minecraft:custom_data".ModStorage.oxygen_tank set from block ~ ~ ~ Items[{Slot:11b}]
data modify entity @s HandItems[0].components."minecraft:custom_data".ModStorage.oxygen_tank.Slot set value 3b