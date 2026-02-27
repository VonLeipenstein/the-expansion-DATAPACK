# summon destination buttons:
summon interaction ~ ~ ~ {Tags:["exp.launch_pad_hitbox","exp.destination_left"],height:0.5,width:0.5,response:1b,Passengers:[{id:"minecraft:snowball",Item:{id:"jigsaw",components:{item_model:"expansion:empty"}},Invulnerable:1b,NoGravity:1b}]}
summon interaction ~ ~ ~ {Tags:["exp.launch_pad_hitbox","exp.destination_right"],height:0.5,width:0.5,response:1b,Passengers:[{id:"minecraft:snowball",Item:{id:"jigsaw",components:{item_model:"expansion:empty"}},Invulnerable:1b,NoGravity:1b}]}

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
execute at @s on passengers if entity @s[tag=exp.left_link] on origin run tp @s ^-0.2 ^0.8 ^1.3
execute at @s on passengers if entity @s[tag=exp.right_link] on origin run tp @s ^1.1 ^0.8 ^1.3