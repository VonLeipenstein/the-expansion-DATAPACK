execute if score @s exp.origin = #earth exp.gravity_id if score @s exp.destination = #moon exp.gravity_id run return run scoreboard players operation #return exp.value = #overworld_moon exp.distance
execute if score @s exp.origin = #earth exp.gravity_id if score @s exp.destination = #mars exp.gravity_id run return run scoreboard players operation #return exp.value = #overworld_mars exp.distance
execute if score @s exp.origin = #earth exp.gravity_id if score @s exp.destination = #venus exp.gravity_id run return run scoreboard players operation #return exp.value = #overworld_venus exp.distance

execute if score @s exp.origin = #moon exp.gravity_id if score @s exp.destination = #earth exp.gravity_id run return run scoreboard players operation #return exp.value = #overworld_moon exp.distance
execute if score @s exp.origin = #moon exp.gravity_id if score @s exp.destination = #mars exp.gravity_id run return run scoreboard players operation #return exp.value = #moon_mars exp.distance
execute if score @s exp.origin = #moon exp.gravity_id if score @s exp.destination = #venus exp.gravity_id run return run scoreboard players operation #return exp.value = #moon_venus exp.distance

execute if score @s exp.origin = #mars exp.gravity_id if score @s exp.destination = #earth exp.gravity_id run return run scoreboard players operation #return exp.value = #overworld_mars exp.distance
execute if score @s exp.origin = #mars exp.gravity_id if score @s exp.destination = #moon exp.gravity_id run return run scoreboard players operation #return exp.value = #moon_mars exp.distance
execute if score @s exp.origin = #mars exp.gravity_id if score @s exp.destination = #venus exp.gravity_id run return run scoreboard players operation #return exp.value = #mars_venus exp.distance

execute if score @s exp.origin = #venus exp.gravity_id if score @s exp.destination = #earth exp.gravity_id run return run scoreboard players operation #return exp.value = #overworld_venus exp.distance
execute if score @s exp.origin = #venus exp.gravity_id if score @s exp.destination = #moon exp.gravity_id run return run scoreboard players operation #return exp.value = #moon_venus exp.distance
execute if score @s exp.origin = #venus exp.gravity_id if score @s exp.destination = #mars exp.gravity_id run return run scoreboard players operation #return exp.value = #mars_venus exp.distance

return 0