# >>> generated function callers >>>
# Callers for expansion:spacesuits/oxygen/get_data/storage_loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:spacesuits/oxygen/get_data/init_loop (1 caller) [OK same-folder]
# - function expansion:spacesuits/oxygen/get_data/storage_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# check the values for this entry
execute if data storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.max run function expansion:spacesuits/oxygen/get_data/add_value

# move to the next item in the array
function expansion:utilities/shift_modstorage_array
# repeat if we checked the entire array, and once more to restore it to its original state
scoreboard players remove #get_oxygen exp.max_range 1
execute if score #get_oxygen exp.max_range matches 1.. if score #number_of_tanks exp.counter_1 matches 1.. run return run function expansion:spacesuits/oxygen/get_data/storage_loop