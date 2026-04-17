# convert to landing if the fuel ran out
execute unless score @s exp.fuel_level matches 1.. run function expansion:vehicles/rocket_segment/landing/init

# propel the rocket upwards
function expansion:vehicles/rocket_segment/launching/propulsion

# transport the rocket to the destination once it reaches space
execute if predicate expansion:location/space_edge run function expansion:vehicles/rocket_segment/launching/transport