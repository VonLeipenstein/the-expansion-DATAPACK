# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/launching/transport
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/launching/propulsion (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Start landing sequence
function expansion:vehicles/rocket_segment/landing/init

# Consume the trip fuel
execute store result score #remove exp.fuel_level run function expansion:vehicles/rocket_segment/get_stat/trip_cost
tellraw @a [{"text":"trip cost: "},{"score":{"name":"#remove","objective":"exp.fuel_level"}},{"text":" fuel"}]
function expansion:vehicles/rocket_segment/consume_fuel

# Teleport the rocket to the dimension specified in the destination score
execute if score @s exp.destination matches 0 in minecraft:overworld run tp @s ~ 500 ~
execute if score @s exp.destination matches 1 in expansion:moon run tp @s ~ 500 ~
execute if score @s exp.destination matches 2 in expansion:mars run tp @s ~ 500 ~
execute if score @s exp.destination matches 3 in expansion:venus run tp @s ~ 500 ~

# Make the origin the new destination for the return launch
scoreboard players operation #temp exp.destination = @s exp.destination
scoreboard players operation @s exp.destination = @s exp.origin
scoreboard players operation @s exp.origin = #temp exp.destination
scoreboard players reset #temp exp.destination