# >>> generated function callers >>>
# Callers for expansion:spacesuits/module_icons/storage_loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:spacesuits/module_icons/init_loop (1 caller) [OK same-folder]
# - function expansion:spacesuits/module_icons/storage_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

function expansion:spacesuits/module_icons/display_icon

# move to the next item in the array
function expansion:utilities/shift_modstorage_array
scoreboard players remove #set_icons exp.max_range 1
execute if score #set_icons exp.max_range matches 1.. run return run function expansion:spacesuits/module_icons/storage_loop