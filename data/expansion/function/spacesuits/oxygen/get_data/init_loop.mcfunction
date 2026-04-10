# >>> generated function callers >>>
# Callers for expansion:spacesuits/oxygen/get_data/init_loop
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 2/3 honored
# Sources:
# - function expansion:items/oxygen_tank/refill_equipment (1 caller) [WARN side/down 5]
# - function expansion:spacesuits/oxygen/leakage_loss (1 caller) [OK above +1]
# - function expansion:spacesuits/oxygen/replenish_from_tank (1 caller) [OK above +1]
# <<< generated function callers <<<

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