# >>> generated function callers >>>
# Callers for expansion:spacesuits/get_armor_modules/get_module_stats/storage_loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:spacesuits/get_armor_modules/get_module_stats/init_loop (1 caller) [OK same-folder]
# - function expansion:spacesuits/get_armor_modules/get_module_stats/storage_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# For the current armor piece, check the modules
execute if data storage expansion:temp ModStorage[0].id run data modify storage expansion:temp stats set from storage expansion:temp ModStorage[0].components."minecraft:custom_data"
execute if data storage expansion:temp ModStorage[0].id run function expansion:spacesuits/get_armor_modules/add_stats/oxygen

# move to the next item in the array
function expansion:utilities/shift_modstorage_array
# repeat if we checked the entire array, and once more to restore it to its original state
scoreboard players remove #get_stats exp.max_range 1
execute if score #get_stats exp.max_range matches 1.. run return run function expansion:spacesuits/get_armor_modules/get_module_stats/storage_loop