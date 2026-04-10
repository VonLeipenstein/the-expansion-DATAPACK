# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/buggy/apply_mods/apply_upgrade
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/apply (1 caller) [OK above +2]
# <<< generated function callers <<<

# merge the mod array with the buggy
data modify entity @s data.ModStorage merge from storage expansion:temp ModStorage

execute if data entity @s data.ModStorage.oxygen_tank.id run function expansion:vehicles/buggy/oxygen/merge_scores_from_tank
execute if data entity @s data.ModStorage.speed_mod.id store result score @s exp.speed_mod run data get storage expansion:temp ModStorage.speed_mod.components."minecraft:custom_data".value

# remove tag
tag @s remove exp.being_modified