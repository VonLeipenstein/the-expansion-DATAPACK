#extract rocket scores
execute store result score #stat exp.mass on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.mass
execute store result score #stat exp.engine_thrust on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.engine_thrust
execute store result score #stat exp.engine_efficiency on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.engine_efficiency
execute store result score #stat exp.fuel_level on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.fuel_level
execute store result score #stat exp.fuel_max on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.fuel_max

# get origin gravity score
execute store result score #origin exp.gravity run function expansion:mechanics/gravity/get_score
scoreboard players operation #origin_gravity_whole exp.gravity = #origin exp.gravity
scoreboard players operation #origin_gravity_decimal exp.gravity = #origin exp.gravity
execute store result score #origin_gravity_whole exp.gravity run scoreboard players operation #origin_gravity_whole exp.gravity /= #100 exp.const
execute store result score #origin_gravity_decimal exp.gravity run scoreboard players operation #origin_gravity_decimal exp.gravity %= #100 exp.const

# get destination gravity score
execute if score @s exp.hold_value matches 0 in minecraft:overworld store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
execute if score @s exp.hold_value matches 1 in expansion:moon store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
execute if score @s exp.hold_value matches 2 in expansion:mars store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
execute if score @s exp.hold_value matches 3 in expansion:venus store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
scoreboard players operation #destination_gravity_whole exp.gravity = #destination exp.gravity
scoreboard players operation #destination_gravity_decimal exp.gravity = #destination exp.gravity
execute store result score #destination_gravity_whole exp.gravity run scoreboard players operation #destination_gravity_whole exp.gravity /= #100 exp.const
execute store result score #destination_gravity_decimal exp.gravity run scoreboard players operation #destination_gravity_decimal exp.gravity %= #100 exp.const

# calculate rocket weight on orign planet based on mass and gravity
scoreboard players operation #origin exp.weight = #stat exp.mass
scoreboard players operation #origin exp.weight *= #origin exp.gravity
scoreboard players operation #origin exp.weight /= #100 exp.const

# calculate rocket weight on destination planet based on mass and gravity
scoreboard players operation #destination exp.weight = #stat exp.mass
scoreboard players operation #destination exp.weight *= #destination exp.gravity
scoreboard players operation #destination exp.weight /= #100 exp.const

# fuel required to launch from origin
scoreboard players operation #origin_required exp.fuel_level = #stat exp.engine_efficiency
scoreboard players operation #origin_required exp.fuel_level *= #origin exp.weight

# fuel required to launch from destination
scoreboard players operation #destination_required exp.fuel_level = #stat exp.engine_efficiency
scoreboard players operation #destination_required exp.fuel_level *= #destination exp.weight

# trip fuel requirement
scoreboard players set #trip_required exp.fuel_level 16

# total fuel requirement
scoreboard players operation #total_required exp.fuel_level = #origin_required exp.fuel_level
scoreboard players operation #total_required exp.fuel_level += #destination_required exp.fuel_level
scoreboard players operation #total_required exp.fuel_level += #trip_required exp.fuel_level
scoreboard players operation #total_required exp.fuel_level += #trip_required exp.fuel_level

