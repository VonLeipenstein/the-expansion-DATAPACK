# Fuel is removed at an interval such that it matches the amount of fuel needed to reach space.
# fuel is deducted every timer_1 blocks, with an offset of dy
execute store result score #temp exp.y run data get entity @s Pos[1] 1000
scoreboard players operation #temp exp.y -= @s exp.dy
scoreboard players operation #temp exp.y %= @s exp.timer_1
execute if score #temp exp.y < @s exp.hold_value run scoreboard players set #remove exp.fuel_level 1
execute if score #temp exp.y < @s exp.hold_value run function expansion:vehicles/rocket_segment/consume_fuel
# convert to landing if the fuel ran out
execute if score #temp exp.y < @s exp.hold_value if function expansion:vehicles/rocket_segment/fuel_depleted run function expansion:vehicles/rocket_segment/landing/init
scoreboard players operation @s exp.hold_value = #temp exp.y
scoreboard players reset #temp exp.y

# explode the rocket if it's not moving (obstructed) or missing a nose cone
execute store result score #temp exp.dy run data get entity @s Motion[1] 100.0
execute if score @s exp.y matches 50.. if score #temp exp.dy matches -10..10 run function expansion:vehicles/rocket_segment/explode/loop
scoreboard players reset #temp exp.dy

# explode the rocket if it is moving too fast without a nose cone
function expansion:vehicles/rocket_segment/count_segments
execute if score @s exp.y matches 100.. unless score #top exp.hold_count matches 1.. run function expansion:vehicles/rocket_segment/explode/loop
scoreboard players reset #top exp.hold_count
scoreboard players reset #body exp.hold_count
scoreboard players reset #bottom exp.hold_count
scoreboard players reset #fuel exp.hold_count

# propel the rocket upwards
function expansion:vehicles/rocket_segment/launching/propulsion

# transport the rocket to the destination once it reaches space
execute if predicate expansion:location/space_edge run function expansion:vehicles/rocket_segment/launching/transport