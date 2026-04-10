# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/buggy/remove_mods/oxygen_tank
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/buggy/remove_mods/initiate (1 caller) [OK same-folder]
# <<< generated function callers <<<

#--- RUNS AS BUGGY AT MODSTATION

# placeholder item
loot replace block ~ ~ ~ container.9 loot expansion:items/gui/filler

# correction because the system didn't understand the slot otherwise because I removed its data in the crafting in the assembler
data modify entity @s data.ModStorage.oxygen_tank.Slot set value 9b

# copy from the buggy to the placeholder item and remove buggy data
data modify block ~ ~ ~ Items[{Slot:9b}] set from entity @s data.ModStorage.oxygen_tank
data remove entity @s data.ModStorage.oxygen_tank

# calculate tanks new percentage and find the new tank cmd
scoreboard players operation #input exp.math = @s exp.oxygen_lvl
scoreboard players operation #max exp.math = @s exp.oxygen_max
execute store result score #temp exp.oxygen_percent run function expansion:utilities/percentage
execute store result storage expansion:oxygen_calc data.oxygen_lvl int 1 run scoreboard players get @s exp.oxygen_lvl

# merge the new values with the item
item modify block ~ ~ ~ container.9 expansion:oxygen_tank/merge_cmd_from_score
item modify block ~ ~ ~ container.9 expansion:oxygen_tank/merge_oxygen_level_from_data

# reset the buggies 
scoreboard players reset @s exp.oxygen_lvl
scoreboard players reset @s exp.oxygen_max