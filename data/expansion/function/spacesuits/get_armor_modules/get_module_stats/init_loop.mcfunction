# >>> generated function callers >>>
# Callers for expansion:spacesuits/get_armor_modules/get_module_stats/init_loop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/get_armor_modules/storage_loop (1 caller) [OK above +1]
# <<< generated function callers <<<

## Loop through each armor piece
execute store result score #get_stats exp.max_range run data get storage expansion:temp ModStorage
function expansion:spacesuits/get_armor_modules/get_module_stats/storage_loop
scoreboard players reset #get_stats exp.max_range