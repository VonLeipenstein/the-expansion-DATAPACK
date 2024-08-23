#--- RUNS AS BUGGY AT MODSTATION

# placeholder item
loot replace block ~ ~ ~ container.9 loot expansion:items/gui/filler

# correction because the system didn't understand the slot otherwise because I removed its data in the crafting in the assembler
data modify entity @s ArmorItems[0].components."minecraft:custom_data".ModStorage.oxygen_tank.Slot set value 9b

# copy from the buggy to the placeholder item and remove buggy data
data modify block ~ ~ ~ Items[{Slot:9b}] set from entity @s ArmorItems[0].components.minecraft:custom_data.ModStorage.oxygen_tank
data remove entity @s ArmorItems[0].components.minecraft:custom_data.ModStorage.oxygen_tank

# calculate tanks new percentage and find the new tank cmd
scoreboard players operation #input exp.oxygen_lvl = @s exp.oxygen_lvl
scoreboard players operation #input exp.oxygen_max = @s exp.oxygen_max
execute store result score #temp exp.oxygen_percent run function expansion:mechanics/oxygen/oxygen_percentage
scoreboard players operation #temp exp.math = #temp exp.oxygen_percent
execute store result score #tier exp.value run data get block ~ ~ ~ Items[{Slot:9b}].components."minecraft:custom_data".tier
function expansion:mechanics/oxygen/find_tank_cmd
execute store result storage expansion:oxygen_calc data.oxygen_lvl int 1 run scoreboard players get @s exp.oxygen_lvl

# merge the new values with the item
item modify block ~ ~ ~ container.9 expansion:oxygen_tank/merge_cmd_from_data
item modify block ~ ~ ~ container.9 expansion:oxygen_tank/merge_oxygen_level_from_data

# reset the buggies 
scoreboard players reset @s exp.oxygen_lvl
scoreboard players reset @s exp.oxygen_max