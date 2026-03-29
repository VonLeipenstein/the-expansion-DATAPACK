# Check if this has a vehicle, if yes, select the vehicle
execute if predicate expansion:riding/rocket_segment on vehicle on vehicle run return run function expansion:vehicles/rocket_segment/merge_stats_with_root

# If not, merge the scores
scoreboard players operation @s exp.mass += #temp exp.mass
scoreboard players operation @s exp.engine_thrust += #temp exp.engine_thrust
scoreboard players operation @s exp.engine_efficiency += #temp exp.engine_efficiency
scoreboard players operation @s exp.fuel_max += #temp exp.fuel_max
scoreboard players operation @s exp.fuel_level += #temp exp.fuel_level