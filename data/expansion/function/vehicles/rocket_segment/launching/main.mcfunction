# Fuel is removed at an interval such that it matches the amount of fuel needed to reach space.
# fuel is deducted every timer_1 blocks, with an offset of dy
execute store result score #temp exp.y run data get entity @s Pos[1] 1000
scoreboard players operation #temp exp.y -= @s exp.dy
scoreboard players operation #temp exp.y %= @s exp.timer_1
execute if score #temp exp.y < @s exp.hold_value run scoreboard players remove @s exp.fuel_level 1
scoreboard players operation @s exp.hold_value = #temp exp.y
scoreboard players reset #temp exp.y


# convert to landing if the fuel ran out
execute unless score @s exp.fuel_level matches 1.. run function expansion:vehicles/rocket_segment/landing/init

# propel the rocket upwards
function expansion:vehicles/rocket_segment/launching/propulsion

# transport the rocket to the destination once it reaches space
execute if predicate expansion:location/space_edge run function expansion:vehicles/rocket_segment/launching/transport