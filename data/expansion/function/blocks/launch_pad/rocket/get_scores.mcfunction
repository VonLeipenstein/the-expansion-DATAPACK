# set the rocket origin and destination from the launch pad
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
