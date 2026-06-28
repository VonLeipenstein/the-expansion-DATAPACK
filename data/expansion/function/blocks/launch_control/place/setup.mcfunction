# >>> generated function callers >>>
# Callers for expansion:blocks/launch_control/place/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_control/place/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.launch_control.new

function expansion:blocks/set_rotation

loot replace entity @s contents loot expansion:blocks/launch_control

# setup text displays
execute on passengers if entity @s[tag=exp.rocket_diagnostics_title] run data merge entity @s {transformation:{translation:[-1.19,1.85,-0.07],scale:[0.3,0.3,0.3],left_rotation:{axis:[0,1,0],angle:0.7854}}}
execute on passengers if entity @s[tag=exp.rocket_diagnostics] run data merge entity @s {transformation:{translation:[-1.19,0.85,-0.07],scale:[0.23,0.23,0.23],left_rotation:{axis:[0,1,0],angle:0.7854}}}

execute on passengers if entity @s[tag=exp.rocket_origin_title] run data merge entity @s {transformation:{translation:[0.35,0.8,0.4],scale:[0.3,0.3,0.3],left_rotation:{axis:[1,0,0],angle:-1.178}}}
execute on passengers if entity @s[tag=exp.rocket_origin_texture] run data merge entity @s {transformation:{translation:[0.32,0.83,0.33],scale:[1.7,1.7,1.7],left_rotation:{axis:[1,0,0],angle:-1.178}}}
execute on passengers if entity @s[tag=exp.rocket_origin] run data merge entity @s {line_width:220,transformation:{translation:[-0.5,0.8,0.4],scale:[0.23,0.23,0.23],left_rotation:{axis:[1,0,0],angle:-1.178}}}

execute on passengers if entity @s[tag=exp.rocket_destination_title] run data merge entity @s {transformation:{translation:[0.35,1.02,-0.163],scale:[0.3,0.3,0.3],left_rotation:{axis:[1,0,0],angle:-0.3927}}}
execute on passengers if entity @s[tag=exp.rocket_destination_texture] run data merge entity @s {transformation:{translation:[0.32,1.09,-0.192],scale:[1.7,1.7,1.7],left_rotation:{axis:[1,0,0],angle:-0.3927}}}
execute on passengers if entity @s[tag=exp.rocket_destination] run data merge entity @s {line_width:220,transformation:{translation:[-0.5,1.02,-0.163],scale:[0.23,0.23,0.23],left_rotation:{axis:[1,0,0],angle:-0.3927}}}

execute on passengers if entity @s[tag=exp.rocket_trip_title] run data merge entity @s {transformation:{translation:[1.19,1.85,-0.07],scale:[0.3,0.3,0.3],left_rotation:{axis:[0,1,0],angle:-0.7854}}}
execute on passengers if entity @s[tag=exp.rocket_trip] run data merge entity @s {line_width:220,transformation:{translation:[1.19,0.9,-0.07],scale:[0.23,0.23,0.23],left_rotation:{axis:[0,1,0],angle:-0.7854}}}

execute on passengers if entity @s[tag=exp.destination_left] run data merge entity @s {text:{"text":"◀"},transformation:{translation:[0.0,1.2,-0.235],scale:[1,1,1],left_rotation:{axis:[1,0,0],angle:-0.3927}}}
execute on passengers if entity @s[tag=exp.destination_right] run data merge entity @s {text:{"text":"▶"},transformation:{translation:[0.70,1.2,-0.235],scale:[1,1,1],left_rotation:{axis:[1,0,0],angle:-0.3927}}}
execute rotated as @s on passengers if entity @s[type=minecraft:text_display] run rotate @s ~ 0

execute at @s run function expansion:blocks/launch_control/place/setup_buttons

execute if dimension minecraft:overworld run scoreboard players operation @s exp.origin = #earth exp.gravity_id
execute if dimension expansion:moon run scoreboard players operation @s exp.origin = #moon exp.gravity_id
execute if dimension expansion:mars run scoreboard players operation @s exp.origin = #mars exp.gravity_id
execute if dimension expansion:venus run scoreboard players operation @s exp.origin = #venus exp.gravity_id
scoreboard players operation @s exp.destination = @s exp.origin
scoreboard players add @s exp.destination 1

# set basic text
function expansion:blocks/launch_control/text_display/reset

# check for a nearby launchpad and link it
function expansion:blocks/launch_control/link_pad/link