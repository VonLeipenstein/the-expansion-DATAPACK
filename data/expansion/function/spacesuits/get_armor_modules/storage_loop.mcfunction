# For the current armor piece, check the modules and their values
execute if data storage expansion:temp player.armor[0].id run data modify storage expansion:temp ModStorage set from storage expansion:temp player.armor[0].components."minecraft:custom_data".ModStorage
execute if data storage expansion:temp player.armor[0].id run function expansion:spacesuits/get_armor_modules/get_module_stats/init_loop

# Armor pieces themselves can hold temperature stats
data modify storage expansion:temp stats set from storage expansion:temp player.armor[0].components."minecraft:custom_data"
function expansion:spacesuits/get_armor_modules/add_stats/temp_resist

# move to the next item in the array
data modify storage expansion:temp player.armor append from storage expansion:temp player.armor[0]
data remove storage expansion:temp player.armor[0]

# repeat if we checked the entire array, and once more to restore it to its original state
scoreboard players remove #get_armor exp.max_range 1
execute if score #get_armor exp.max_range matches 1.. run return run function expansion:spacesuits/get_armor_modules/storage_loop