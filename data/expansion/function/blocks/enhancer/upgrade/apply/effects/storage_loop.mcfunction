# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/effects/storage_loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/effects/init_loop (1 caller) [OK same-folder]
# - function expansion:blocks/enhancer/upgrade/apply/effects/storage_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# check the values for this entry
execute if data storage expansion:temp ModStorage[0].id run function expansion:blocks/enhancer/upgrade/apply/effects/effects

# add this modules icon to the icon list to be displayed
function expansion:spacesuits/module_icons/display_icon

# move to the next item in the array
function expansion:utilities/shift_modstorage_array
# repeat if we checked the entire array, and once more to restore it to its original state
scoreboard players remove #apply_module exp.max_range 1
execute if score #apply_module exp.max_range matches 1.. run return run function expansion:blocks/enhancer/upgrade/apply/effects/storage_loop