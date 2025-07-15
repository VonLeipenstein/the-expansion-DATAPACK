# get the total oxygen values from the storage expansion:temp ModStorage
# Sets the values in the scores below
scoreboard players reset #temp exp.oxygen_lvl
scoreboard players reset #temp exp.oxygen_max

# store the number of oxygen tanks
execute store result score #number_of_tanks exp.counter_1 if data storage expansion:temp ModStorage[{components:{"minecraft:custom_data":{exp_item:{name:"oxygen_tank"}}}}]

# store the number of total slots
execute store result score #get_oxygen exp.max_range run data get storage expansion:temp ModStorage
function expansion:spacesuits/oxygen/get_data/storage_loop
scoreboard players reset #get_oxygen exp.max_range

## Can also return the current percentage
scoreboard players operation #input exp.math = #temp exp.oxygen_lvl
scoreboard players operation #max exp.math = #temp exp.oxygen_max
return run function expansion:utilities/percentage