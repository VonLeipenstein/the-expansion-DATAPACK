# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/place/setup_buttons
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/place/setup (1 caller) [OK same-folder]
# <<< generated function callers <<<

# summon destination buttons:
summon interaction ~ ~ ~ {Tags:["exp.launch_control_hitbox","exp.destination_left"],height:0.2,width:0.2,response:1b,Passengers:[{id:"minecraft:snowball",Item:{id:"jigsaw",components:{item_model:"expansion:empty"}},Invulnerable:1b,NoGravity:1b}]}
summon interaction ~ ~ ~ {Tags:["exp.launch_control_hitbox","exp.destination_right"],height:0.2,width:0.2,response:1b,Passengers:[{id:"minecraft:snowball",Item:{id:"jigsaw",components:{item_model:"expansion:empty"}},Invulnerable:1b,NoGravity:1b}]}

# link launchpad to buttons
execute as @n[type=interaction,tag=exp.destination_left,distance=..0.1] run data modify storage expansion:owner data.current_UUID set from entity @s UUID
execute on passengers if entity @s[tag=exp.left_link] run function expansion:utilities/snowball_link/link_from_storage
execute as @n[type=interaction,tag=exp.destination_right,distance=..0.1] run data modify storage expansion:owner data.current_UUID set from entity @s UUID
execute on passengers if entity @s[tag=exp.right_link] run function expansion:utilities/snowball_link/link_from_storage

# link buttons to launchpad
data modify storage expansion:owner data.current_UUID set from entity @s UUID
execute on passengers if entity @s[tag=exp.left_link] on origin on passengers if entity @s[type=snowball] run function expansion:utilities/snowball_link/link_from_storage
data modify storage expansion:owner data.current_UUID set from entity @s UUID
execute on passengers if entity @s[tag=exp.right_link] on origin on passengers if entity @s[type=snowball] run function expansion:utilities/snowball_link/link_from_storage

# position buttons
execute at @s on passengers if entity @s[tag=exp.left_link] on origin run tp @s ^ ^1.25 ^-0.3
execute at @s on passengers if entity @s[tag=exp.right_link] on origin run tp @s ^0.7 ^1.25 ^-0.3