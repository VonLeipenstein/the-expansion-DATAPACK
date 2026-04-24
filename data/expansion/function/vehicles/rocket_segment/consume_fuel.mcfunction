# remove fuel if this tank has fuel
execute if score @s exp.fuel_level matches 1.. run function expansion:vehicles/rocket_segment/fuel/remove

# if this tank still has fuel, retry until amount to be removed is 0 or tank is empty
execute if score #remove exp.fuel_level matches 1.. if score @s exp.fuel_level matches 1.. run return run function expansion:vehicles/rocket_segment/consume_fuel

# proceed to next fuel reserve if this tank is empty and there is still fuel to be removed
execute if score #remove exp.fuel_level matches 1.. on passengers on passengers run return run function expansion:vehicles/rocket_segment/consume_fuel

# fueling fails when there are no segments with fuel
scoreboard players reset #remove exp.fuel_level
return fail