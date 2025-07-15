## Divide an oxygen score over the tanks in the storage
# Input: #input exp.oxygen_lvl + storage expansion:temp ModStorage
# output: Updated storage expansion:temp ModStorage with the new tank values
execute store result score #set_oxygen exp.max_range run data get storage expansion:temp ModStorage
function expansion:spacesuits/oxygen/set_data/storage_loop
scoreboard players reset #set_oxygen exp.max_range