execute if score @s exp.origin = #earth exp.gravity_id if score @s exp.destination = #moon exp.gravity_id run return run scoreboard players operation #return exp.value = #overworld_to_moon_required exp.fuel_level
execute if score @s exp.origin = #earth exp.gravity_id if score @s exp.destination = #mars exp.gravity_id run return run scoreboard players operation #return exp.value = #overworld_to_mars_required exp.fuel_level
execute if score @s exp.origin = #earth exp.gravity_id if score @s exp.destination = #venus exp.gravity_id run return run scoreboard players operation #return exp.value = #overworld_to_venus_required exp.fuel_level

execute if score @s exp.origin = #moon exp.gravity_id if score @s exp.destination = #earth exp.gravity_id run return run scoreboard players operation #return exp.value = #moon_to_overworld_required exp.fuel_level
execute if score @s exp.origin = #moon exp.gravity_id if score @s exp.destination = #mars exp.gravity_id run return run scoreboard players operation #return exp.value = #moon_to_mars_required exp.fuel_level
execute if score @s exp.origin = #moon exp.gravity_id if score @s exp.destination = #venus exp.gravity_id run return run scoreboard players operation #return exp.value = #moon_to_venus_required exp.fuel_level

execute if score @s exp.origin = #mars exp.gravity_id if score @s exp.destination = #earth exp.gravity_id run return run scoreboard players operation #return exp.value = #mars_to_overworld_required exp.fuel_level
execute if score @s exp.origin = #mars exp.gravity_id if score @s exp.destination = #moon exp.gravity_id run return run scoreboard players operation #return exp.value = #mars_to_moon_required exp.fuel_level
execute if score @s exp.origin = #mars exp.gravity_id if score @s exp.destination = #venus exp.gravity_id run return run scoreboard players operation #return exp.value = #mars_to_venus_required exp.fuel_level

execute if score @s exp.origin = #venus exp.gravity_id if score @s exp.destination = #earth exp.gravity_id run return run scoreboard players operation #return exp.value = #venus_to_overworld_required exp.fuel_level
execute if score @s exp.origin = #venus exp.gravity_id if score @s exp.destination = #moon exp.gravity_id run return run scoreboard players operation #return exp.value = #venus_to_moon_required exp.fuel_level
execute if score @s exp.origin = #venus exp.gravity_id if score @s exp.destination = #mars exp.gravity_id run return run scoreboard players operation #return exp.value = #venus_to_mars_required exp.fuel_level

return 0