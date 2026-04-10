# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/convert_to_capsule/root
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:solar_system/transitions/moon_earth/moon_to_earth (1 caller) [WARN side/down 6]
# <<< generated function callers <<<

# display
execute on passengers if entity @s[type=item_display] run function expansion:vehicles/lunar_module/convert_to_capsule/display

# interaction
execute on passengers if entity @s[type=interaction] run function expansion:vehicles/lunar_module/convert_to_capsule/interaction

# camel
execute on passengers if entity @s[type=camel] run function expansion:vehicles/lunar_module/convert_to_capsule/seat

# root entity
tag @s add exp.return_capsule
tag @s remove exp.lunar_module
tag @s add exp.landing_earth
attribute @s scale base set 0
effect clear @s levitation
effect clear @s slow_falling
attribute @s safe_fall_distance base set 10000
scoreboard players reset @s exp.timer_2

# Overlayed on 1.21.6+
function expansion:utilities/reset_waypoint

# move the passenger here
execute if entity @p[tag=exp.move_pilot] run ride @p[tag=exp.move_pilot] mount @s
tag @p[tag=exp.move_pilot] remove exp.move_pilot
execute if entity @p[tag=exp.move_passenger] run ride @p[tag=exp.move_passenger] mount @s
tag @p[tag=exp.move_passenger] remove exp.move_passenger

# player (camel moved players down in the stack)
execute on passengers if entity @s[type=player] run function expansion:vehicles/lunar_module/convert_to_capsule/player
