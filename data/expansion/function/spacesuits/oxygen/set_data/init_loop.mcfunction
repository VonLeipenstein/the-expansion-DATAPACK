# >>> generated function callers >>>
# Callers for expansion:spacesuits/oxygen/set_data/init_loop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/oxygen/set_data/merge_oxygen (1 caller) [OK same-folder]
# <<< generated function callers <<<

## Divide an oxygen score over the tanks in the storage
# Input: #input exp.oxygen_lvl + storage expansion:temp ModStorage
# output: Updated storage expansion:temp ModStorage with the new tank values
execute store result score #set_oxygen exp.max_range run data get storage expansion:temp ModStorage
function expansion:spacesuits/oxygen/set_data/storage_loop
scoreboard players reset #set_oxygen exp.max_range