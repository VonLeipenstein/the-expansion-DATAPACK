# >>> generated function callers >>>
# Callers for expansion:spacesuits/module_icons/init_loop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:spacesuits/oxygen/set_data/merge_oxygen (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

data remove storage expansion:temp icons
execute store result score #set_icons exp.max_range run data get storage expansion:temp ModStorage
function expansion:spacesuits/module_icons/storage_loop
scoreboard players reset #set_icons exp.max_range