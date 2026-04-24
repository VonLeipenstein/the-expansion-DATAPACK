# Keep the origin and destination planet up to date
execute on passengers if entity @s[type=interaction] on passengers if entity @s[tag=exp.rocket_segment] store result score @s exp.origin on vehicle on vehicle run scoreboard players get @s exp.origin
execute on passengers if entity @s[type=interaction] on passengers if entity @s[tag=exp.rocket_segment] store result score @s exp.destination on vehicle on vehicle run scoreboard players get @s exp.destination

# get origin gravity score
execute store result score #origin exp.gravity run function expansion:mechanics/gravity/get_score
# get destination gravity score
execute if score @s exp.destination = #earth exp.gravity_id in minecraft:overworld store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
execute if score @s exp.destination = #moon exp.gravity_id in expansion:moon store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
execute if score @s exp.destination = #mars exp.gravity_id in expansion:mars store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
execute if score @s exp.destination = #venus exp.gravity_id in expansion:venus store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score

# calculate gravity decimals for origin and destination
scoreboard players operation #origin_whole exp.gravity = #origin exp.gravity
scoreboard players operation #origin_decimal exp.gravity = #origin exp.gravity
execute store result score #origin_whole exp.gravity run scoreboard players operation #origin_whole exp.gravity /= #100 exp.const
execute store result score #origin_decimal exp.gravity run scoreboard players operation #origin_decimal exp.gravity %= #100 exp.const
scoreboard players operation #destination_whole exp.gravity = #destination exp.gravity
scoreboard players operation #destination_decimal exp.gravity = #destination exp.gravity
execute store result score #destination_whole exp.gravity run scoreboard players operation #destination_whole exp.gravity /= #100 exp.const
execute store result score #destination_decimal exp.gravity run scoreboard players operation #destination_decimal exp.gravity %= #100 exp.const

# calculate all stats for the rocket (as the rocket)
execute on passengers on passengers if entity @s[tag=exp.rocket_segment] run function expansion:vehicles/rocket_segment/get_stat/all

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