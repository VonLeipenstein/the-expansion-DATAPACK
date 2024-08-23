data merge entity @s {Silent:1b,Marker:1b,Invisible:1b}
tag @s add exp.room_position
tag @s add exp.position_new
item replace entity @s armor.feet with minecraft:stick 1

tp @p[tag=exp.transporting] @s

# store the coordinates of the return position as well as the return dimension
execute as @p[tag=exp.transporting] run function expansion:items/transporter/save_dimension

# teleport this transporter armor stand to the pocket space
execute in expansion:storage run tp @s 0 0 0

# tellraw
tellraw @p[tag=exp.transporting] ["",{"text":"Entered Pocket Space: ","color":"aqua"},{"score":{"name":"#temp","objective":"exp.unique_id"},"bold":true}]

# change the position of this armor stand according to the unique ID of the transporter
execute store result entity @s Pos[0] double 1000 run scoreboard players get #temp exp.unique_id
scoreboard players reset #temp exp.unique_id

# teleport the player to the armor stand 
execute in expansion:storage positioned as @s run function expansion:items/transporter/transport_player