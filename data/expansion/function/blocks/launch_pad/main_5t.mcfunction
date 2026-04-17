# calculate all stats for the rocket
function expansion:blocks/launch_pad/text_display/calculate_stats

# Set up text data for stats, origin, destination, and trip
function expansion:blocks/launch_pad/text_display/stats
function expansion:blocks/launch_pad/text_display/origin
function expansion:blocks/launch_pad/text_display/destination
function expansion:blocks/launch_pad/text_display/trip

# WARNINGS
execute if score #stat exp.fuel_level < #total_required exp.fuel_level run function expansion:blocks/launch_pad/text_display/warnings/fuel_level
execute if score #stat exp.fuel_max < #total_required exp.fuel_level run function expansion:blocks/launch_pad/text_display/warnings/fuel_capacity
execute if score #destination exp.weight > #stat exp.engine_thrust run function expansion:blocks/launch_pad/text_display/warnings/weight

# ERRORS
execute if score #stat exp.fuel_level < #origin_total exp.fuel_level run function expansion:blocks/launch_pad/text_display/errors/fuel_level
execute if score #stat exp.fuel_max < #origin_total exp.fuel_level run function expansion:blocks/launch_pad/text_display/errors/fuel_capacity
execute if score #origin exp.weight > #stat exp.engine_thrust run function expansion:blocks/launch_pad/text_display/errors/weight

execute unless score #fuel exp.hold_count matches 1.. run function expansion:blocks/launch_pad/text_display/errors/missing_fuel_tank
execute unless score #top exp.hold_count matches 1.. run function expansion:blocks/launch_pad/text_display/errors/missing_nose_cone
execute unless score #body exp.hold_count matches 1.. run function expansion:blocks/launch_pad/text_display/errors/missing_body
execute unless score #bottom exp.hold_count matches 1.. run function expansion:blocks/launch_pad/text_display/errors/missing_engines

# Merge text data with entities
execute on passengers if entity @s[tag=exp.rocket_diagnostics] run data modify entity @s text set from storage expansion:temp launchpad.stats
execute on passengers if entity @s[tag=exp.rocket_destination] run data modify entity @s text set from storage expansion:temp launchpad.destination
execute on passengers if entity @s[tag=exp.rocket_origin] run data modify entity @s text set from storage expansion:temp launchpad.origin
execute on passengers if entity @s[tag=exp.rocket_trip] run data modify entity @s text set from storage expansion:temp launchpad.trip

# Reset scores
function expansion:blocks/launch_pad/text_display/reset_scores