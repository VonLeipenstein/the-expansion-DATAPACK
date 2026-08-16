# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/calculate_stats
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

function expansion:vehicles/rocket_segment/count_segments

# extract rocket scores
execute store result score #stat exp.mass run function expansion:vehicles/rocket_segment/get_stat/mass/total
execute store result score #stat exp.engine_thrust run function expansion:vehicles/rocket_segment/get_stat/thrust/total
execute store result score #stat exp.engine_efficiency run function expansion:vehicles/rocket_segment/get_stat/efficiency/total
execute store result score #stat exp.fuel_level run function expansion:vehicles/rocket_segment/get_stat/fuel/total
execute store result score #stat exp.fuel_max run function expansion:vehicles/rocket_segment/get_stat/capacity/total
execute store result score #stat exp.max_range run function expansion:vehicles/rocket_segment/get_stat/range/total

# engine efficiency decimal and whole part
scoreboard players operation #whole exp.engine_efficiency = #stat exp.engine_efficiency
scoreboard players operation #decimal exp.engine_efficiency = #stat exp.engine_efficiency
execute store result score #whole exp.engine_efficiency run scoreboard players operation #whole exp.engine_efficiency /= #100 exp.const
execute store result score #decimal exp.engine_efficiency run scoreboard players operation #decimal exp.engine_efficiency %= #100 exp.const

# calculate rocket weight on orign planet based on mass and gravity
execute store result score #origin exp.weight run function expansion:vehicles/rocket_segment/get_stat/weight

# calculate rocket weight on destination planet based on mass and gravity
scoreboard players operation #input exp.gravity = #destination exp.gravity
execute store result score #destination exp.weight run function expansion:vehicles/rocket_segment/get_stat/weight

# fuel required to launch from origin
scoreboard players operation #origin_required exp.fuel_level = #origin exp.weight
scoreboard players operation #origin_required exp.fuel_level *= #100 exp.const
scoreboard players operation #origin_required exp.fuel_level /= #stat exp.engine_efficiency
scoreboard players operation #origin_total exp.fuel_level = #origin_required exp.fuel_level

# fuel required to launch from destination
scoreboard players operation #destination_required exp.fuel_level = #destination exp.weight
scoreboard players operation #destination_required exp.fuel_level *= #100 exp.const
scoreboard players operation #destination_required exp.fuel_level /= #stat exp.engine_efficiency
scoreboard players operation #destination_total exp.fuel_level = #destination_required exp.fuel_level

# total fuel requirement
scoreboard players operation #total_required exp.fuel_level = #origin_required exp.fuel_level
scoreboard players operation #total_required exp.fuel_level += #destination_required exp.fuel_level