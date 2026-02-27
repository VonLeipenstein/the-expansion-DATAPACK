tag @s remove exp.launch_pad.new

function expansion:blocks/set_rotation

loot replace entity @s contents loot expansion:blocks/launch_pad

# mount the nearest rocket segment within range
ride @n[type=armor_stand,tag=exp.rocket_segment,distance=..1] mount @s

# setup text display
execute on passengers if entity @s[tag=exp.rocket_diagnostics] run data merge entity @s {transformation:{translation:[-0.82,0.9,1.44],scale:[0.3,0.3,0.3],left_rotation:{axis:[1,0,0],angle:-0.7854}}}
execute on passengers if entity @s[tag=exp.rocket_destination] run data merge entity @s {line_width:220,transformation:{translation:[0.45 ,0.9,1.44],scale:[0.3,0.3,0.3],left_rotation:{axis:[1,0,0],angle:-0.7854}}}
execute on passengers if entity @s[tag=exp.destination_left] run data merge entity @s {text:{"text":"◄"},transformation:{translation:[-0.2,0.97,1.37],scale:[1.8,1.8,1.8],left_rotation:{axis:[1,0,0],angle:-0.7854}}}
execute on passengers if entity @s[tag=exp.destination_right] run data merge entity @s {text:{"text":"►"},transformation:{translation:[1.1,0.97,1.37],scale:[1.8,1.8,1.8],left_rotation:{axis:[1,0,0],angle:-0.7854}}}
execute rotated as @s on passengers if entity @s[type=minecraft:text_display] run rotate @s ~ 0

execute at @s run function expansion:blocks/launch_pad/place/setup_buttons

# assign a pad ID
scoreboard players add #global exp.pad_id 1
scoreboard players operation @s exp.pad_id = #global exp.pad_id

forceload add ~ ~