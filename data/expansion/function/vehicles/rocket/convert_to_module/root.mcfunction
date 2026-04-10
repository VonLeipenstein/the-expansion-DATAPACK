# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/convert_to_module/root
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:solar_system/transitions/moon_earth/earth_to_moon (1 caller) [WARN side/down 6]
# <<< generated function callers <<<

# display
execute on passengers if entity @s[type=item_display] run function expansion:vehicles/rocket/convert_to_module/display

# interaction
execute on passengers if entity @s[type=interaction] run function expansion:vehicles/rocket/convert_to_module/interaction

# kill ajmodel
execute on passengers if entity @s[tag=aj.rocket.root] run function animated_java:rocket/remove/this

# root entity
tag @s add exp.lunar_module
tag @s remove exp.rocket
tag @s add exp.landing_moon
data merge entity @s {Small:1b}
scoreboard players reset @s exp.timer_2
scoreboard players add @s exp.passenger_count 1
execute if entity @p[tag=exp.move_passenger] run scoreboard players add @s exp.passenger_count 1
effect clear @s levitation
effect give @s slow_falling infinite 1 true
attribute @s safe_fall_distance base set 10000

# Overlayed on 1.21.6+
function expansion:utilities/reset_waypoint

# camel
execute on passengers if entity @s[type=camel] run function expansion:vehicles/rocket/convert_to_module/seat

# player
execute on passengers on passengers if entity @s[type=player] run function expansion:vehicles/rocket/convert_to_module/player