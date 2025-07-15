# check the values for this entry
execute if data storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen run function expansion:spacesuits/oxygen/set_data/merge_score

# move to the next item in the array
function expansion:utilities/shift_modstorage_array
# repeat if we checked the entire array, and once more to restore it to its original state
scoreboard players remove #set_oxygen exp.max_range 1
execute if score #set_oxygen exp.max_range matches 1.. run return run function expansion:spacesuits/oxygen/set_data/storage_loop