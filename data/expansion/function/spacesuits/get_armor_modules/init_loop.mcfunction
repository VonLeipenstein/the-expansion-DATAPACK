# >>> generated function callers >>>
# Callers for expansion:spacesuits/get_armor_modules/init_loop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/get_armor_modules/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Copy the players armor to a temporary storage
function expansion:utilities/copy_armor_to_storage

# Loop through the entries in this storage
execute store result score #get_armor exp.max_range run data get storage expansion:temp player.armor
function expansion:spacesuits/get_armor_modules/storage_loop
scoreboard players reset #get_armor exp.max_range