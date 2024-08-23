execute store result score #input exp.oxygen_lvl run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".oxygen_lvl
execute store result score #input exp.oxygen_max run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".oxygen_max
execute store result score #temp exp.hold_value run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".tier
execute store result score #temp exp.oxygen_percent run function expansion:mechanics/oxygen/oxygen_percentage

execute store result storage expansion:oxygen_calc data.oxygen_lvl int 1 run scoreboard players get @s exp.oxygen_lvl
item modify block ~ ~ ~ container.5 expansion:oxygen_tank/merge_with_equipment