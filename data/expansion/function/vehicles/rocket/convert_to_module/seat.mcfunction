# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/convert_to_module/seat
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket/convert_to_module/root (1 caller) [OK same-folder]
# <<< generated function callers <<<

attribute @s scale base set 1.0
tag @s add exp.module_seats
tag @s remove exp.rocket_pilot_seat
tag @s remove exp.rocket_seat

# set the camera_distance attribute (1.21.6+)
function expansion:vehicles/lunar_module/summon/set_camera_distance

# move the passenger here
execute if entity @p[tag=exp.move_passenger] run ride @p[tag=exp.move_passenger] mount @s
tag @p[tag=exp.move_passenger] remove exp.move_passenger