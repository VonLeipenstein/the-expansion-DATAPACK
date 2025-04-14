# merge the mod array with the buggy
data modify entity @s data.ModStorage merge from storage expansion:temp ModStorage

execute if data entity @s data.ModStorage.oxygen_tank.id run function expansion:vehicles/buggy/oxygen/merge_scores_from_tank
execute if data entity @s data.ModStorage.speed_mod.id store result score @s exp.speed_mod run data get storage expansion:temp ModStorage.speed_mod.components."minecraft:custom_data".value

# remove tag
tag @s remove exp.being_modified