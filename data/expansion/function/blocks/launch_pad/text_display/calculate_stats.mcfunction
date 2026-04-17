# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/calculate_stats
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

function expansion:vehicles/rocket_segment/count_segments

#extract rocket scores
execute store result score #stat exp.mass on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.mass
execute store result score #stat exp.engine_thrust on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.engine_thrust
execute store result score #stat exp.engine_efficiency on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.engine_efficiency
execute store result score #stat exp.fuel_level on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.fuel_level
execute store result score #stat exp.fuel_max on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.fuel_max

# trip fuel requirement
execute if score @s exp.origin = #earth exp.gravity_id if score @s exp.destination = #moon exp.gravity_id run scoreboard players operation #trip_required exp.fuel_level = #overworld_to_moon_required exp.fuel_level
execute if score @s exp.origin = #earth exp.gravity_id if score @s exp.destination = #mars exp.gravity_id run scoreboard players operation #trip_required exp.fuel_level = #overworld_to_mars_required exp.fuel_level
execute if score @s exp.origin = #earth exp.gravity_id if score @s exp.destination = #venus exp.gravity_id run scoreboard players operation #trip_required exp.fuel_level = #overworld_to_venus_required exp.fuel_level

execute if score @s exp.origin = #moon exp.gravity_id if score @s exp.destination = #earth exp.gravity_id run scoreboard players operation #trip_required exp.fuel_level = #moon_to_overworld_required exp.fuel_level
execute if score @s exp.origin = #moon exp.gravity_id if score @s exp.destination = #mars exp.gravity_id run scoreboard players operation #trip_required exp.fuel_level = #moon_to_mars_required exp.fuel_level
execute if score @s exp.origin = #moon exp.gravity_id if score @s exp.destination = #venus exp.gravity_id run scoreboard players operation #trip_required exp.fuel_level = #moon_to_venus_required exp.fuel_level

execute if score @s exp.origin = #mars exp.gravity_id if score @s exp.destination = #earth exp.gravity_id run scoreboard players operation #trip_required exp.fuel_level = #mars_to_overworld_required exp.fuel_level
execute if score @s exp.origin = #mars exp.gravity_id if score @s exp.destination = #moon exp.gravity_id run scoreboard players operation #trip_required exp.fuel_level = #mars_to_moon_required exp.fuel_level
execute if score @s exp.origin = #mars exp.gravity_id if score @s exp.destination = #venus exp.gravity_id run scoreboard players operation #trip_required exp.fuel_level = #mars_to_venus_required exp.fuel_level

execute if score @s exp.origin = #venus exp.gravity_id if score @s exp.destination = #earth exp.gravity_id run scoreboard players operation #trip_required exp.fuel_level = #venus_to_overworld_required exp.fuel_level
execute if score @s exp.origin = #venus exp.gravity_id if score @s exp.destination = #moon exp.gravity_id run scoreboard players operation #trip_required exp.fuel_level = #venus_to_moon_required exp.fuel_level
execute if score @s exp.origin = #venus exp.gravity_id if score @s exp.destination = #mars exp.gravity_id run scoreboard players operation #trip_required exp.fuel_level = #venus_to_mars_required exp.fuel_level

# get origin gravity score
scoreboard players operation #whole exp.engine_efficiency = #stat exp.engine_efficiency
scoreboard players operation #decimal exp.engine_efficiency = #stat exp.engine_efficiency
execute store result score #whole exp.engine_efficiency run scoreboard players operation #whole exp.engine_efficiency /= #100 exp.const
execute store result score #decimal exp.engine_efficiency run scoreboard players operation #decimal exp.engine_efficiency %= #100 exp.const

# get origin gravity score
execute store result score #origin exp.gravity run function expansion:mechanics/gravity/get_score
scoreboard players operation #origin_whole exp.gravity = #origin exp.gravity
scoreboard players operation #origin_decimal exp.gravity = #origin exp.gravity
execute store result score #origin_whole exp.gravity run scoreboard players operation #origin_whole exp.gravity /= #100 exp.const
execute store result score #origin_decimal exp.gravity run scoreboard players operation #origin_decimal exp.gravity %= #100 exp.const

# get destination gravity score
execute if score @s exp.destination = #earth exp.gravity_id in minecraft:overworld store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
execute if score @s exp.destination = #moon exp.gravity_id in expansion:moon store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
execute if score @s exp.destination = #mars exp.gravity_id in expansion:mars store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
execute if score @s exp.destination = #venus exp.gravity_id in expansion:venus store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
scoreboard players operation #destination_whole exp.gravity = #destination exp.gravity
scoreboard players operation #destination_decimal exp.gravity = #destination exp.gravity
execute store result score #destination_whole exp.gravity run scoreboard players operation #destination_whole exp.gravity /= #100 exp.const
execute store result score #destination_decimal exp.gravity run scoreboard players operation #destination_decimal exp.gravity %= #100 exp.const

# calculate rocket weight on orign planet based on mass and gravity
scoreboard players operation #origin exp.weight = #stat exp.mass
scoreboard players operation #origin exp.weight *= #origin exp.gravity
scoreboard players operation #origin exp.weight /= #100 exp.const

# calculate rocket weight on destination planet based on mass and gravity
scoreboard players operation #destination exp.weight = #stat exp.mass
scoreboard players operation #destination exp.weight *= #destination exp.gravity
scoreboard players operation #destination exp.weight /= #100 exp.const

# fuel required to launch from origin
scoreboard players operation #origin_required exp.fuel_level = #whole exp.engine_efficiency
scoreboard players operation #origin_required exp.fuel_level *= #origin exp.weight
scoreboard players operation #origin_total exp.fuel_level = #origin_required exp.fuel_level
scoreboard players operation #origin_total exp.fuel_level += #trip_required exp.fuel_level

# fuel required to launch from destination
scoreboard players operation #destination_required exp.fuel_level = #whole exp.engine_efficiency
scoreboard players operation #destination_required exp.fuel_level *= #destination exp.weight
scoreboard players operation #destination_total exp.fuel_level = #destination_required exp.fuel_level
scoreboard players operation #destination_total exp.fuel_level += #trip_required exp.fuel_level

# total fuel requirement
scoreboard players operation #total_required exp.fuel_level = #origin_required exp.fuel_level
scoreboard players operation #total_required exp.fuel_level += #destination_required exp.fuel_level
scoreboard players operation #total_required exp.fuel_level += #trip_required exp.fuel_level
scoreboard players operation #total_required exp.fuel_level += #trip_required exp.fuel_level

