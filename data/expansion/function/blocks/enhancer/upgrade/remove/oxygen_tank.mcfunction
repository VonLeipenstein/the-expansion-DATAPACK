loot replace block ~ ~ ~ container.0 loot expansion:tools/oxygen_tanks/tier1/empty
data modify block ~ ~ ~ Items[{Slot:0b}] set from block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.oxygen_tank

# remove oxygen tank lore from equipment
item modify block ~ ~ ~ container.5 expansion:oxygen_tank/remove_from_equipment

# export extracted oxygen tank data
execute store result score #input exp.oxygen_lvl run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".oxygen_lvl
execute store result score #input exp.oxygen_max run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".oxygen_max
execute store result score #temp exp.oxygen_percent run function expansion:mechanics/oxygen/oxygen_percentage

# change the sources custom model data based on the oxygen percentage
scoreboard players operation #temp exp.math = #temp exp.oxygen_percent
execute store result score #tier exp.value run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".tier
function expansion:mechanics/oxygen/find_tank_cmd
item modify block ~ ~ ~ container.0 expansion:oxygen_tank/merge_cmd_from_data

# merge new oxygen values with the source
item modify block ~ ~ ~ container.0 expansion:oxygen_tank/merge_oxygen_percent_from_score

data remove block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.oxygen_tank