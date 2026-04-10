tag @s remove exp.launch_pad.new

function expansion:blocks/set_rotation

loot replace entity @s contents loot expansion:blocks/launch_pad

# mount the nearest rocket segment within range
ride @n[type=armor_stand,tag=exp.rocket_segment,distance=..1] mount @s

# setup text display
execute on passengers if entity @s[tag=exp.rocket_diagnostics_title] run data merge entity @s {transformation:{translation:[-1.2,1.72,1.5],scale:[0.3,0.3,0.3],left_rotation:{axis:[0,1,0],angle:0.7854}}}
execute on passengers if entity @s[tag=exp.rocket_diagnostics] run data merge entity @s {transformation:{translation:[-1.2,0.8,1.5],scale:[0.23,0.23,0.23],left_rotation:{axis:[0,1,0],angle:0.7854}}}

execute on passengers if entity @s[tag=exp.rocket_origin_title] run data merge entity @s {transformation:{translation:[0.35,0.8,1.95],scale:[0.3,0.3,0.3],left_rotation:{axis:[1,0,0],angle:-1.178}}}
execute on passengers if entity @s[tag=exp.rocket_origin_texture] run data merge entity @s {transformation:{translation:[0.32,0.8,1.95],scale:[1.7,1.7,1.7],left_rotation:{axis:[1,0,0],angle:-1.178}}}
execute on passengers if entity @s[tag=exp.rocket_origin] run data merge entity @s {line_width:220,transformation:{translation:[-0.5,0.8,1.95],scale:[0.23,0.23,0.23],left_rotation:{axis:[1,0,0],angle:-1.178}}}

execute on passengers if entity @s[tag=exp.rocket_destination_title] run data merge entity @s {transformation:{translation:[0.35,0.92,1.403],scale:[0.3,0.3,0.3],left_rotation:{axis:[1,0,0],angle:-0.3927}}}
execute on passengers if entity @s[tag=exp.rocket_destination_texture] run data merge entity @s {transformation:{translation:[0.32,0.92,1.39],scale:[1.7,1.7,1.7],left_rotation:{axis:[1,0,0],angle:-0.3927}}}
execute on passengers if entity @s[tag=exp.rocket_destination] run data merge entity @s {line_width:220,transformation:{translation:[-0.5,1.02,1.403],scale:[0.23,0.23,0.23],left_rotation:{axis:[1,0,0],angle:-0.3927}}}

execute on passengers if entity @s[tag=exp.rocket_trip_title] run data merge entity @s {transformation:{translation:[1.2,1.58,1.5],scale:[0.3,0.3,0.3],left_rotation:{axis:[0,1,0],angle:-0.7854}}}
execute on passengers if entity @s[tag=exp.rocket_trip] run data merge entity @s {line_width:220,transformation:{translation:[1.2,0.8,1.5],scale:[0.23,0.23,0.23],left_rotation:{axis:[0,1,0],angle:-0.7854}}}

execute on passengers if entity @s[tag=exp.destination_left] run data merge entity @s {text:{"text":"◀\n"},transformation:{translation:[0.0,0.8,1.44],scale:[1,1,1],left_rotation:{axis:[1,0,0],angle:-0.3927}}}
execute on passengers if entity @s[tag=exp.destination_right] run data merge entity @s {text:{"text":"▶\n"},transformation:{translation:[0.70,0.8,1.44],scale:[1,1,1],left_rotation:{axis:[1,0,0],angle:-0.3927}}}
execute rotated as @s on passengers if entity @s[type=minecraft:text_display] run rotate @s ~ 0

execute at @s run function expansion:blocks/launch_pad/place/setup_buttons

# assign a pad ID
scoreboard players add #global exp.pad_id 1
scoreboard players operation @s exp.pad_id = #global exp.pad_id

forceload add ~ ~