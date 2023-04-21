data merge entity @s {Tags:["exp.room_position","exp.position_new"],Silent:1b,Marker:1b,Invisible:1b,ArmorItems:[{"id":"minecraft:stick",Count:1b},{},{},{}]}

# set the room_id of the armor stand equal to the room_id of the player
scoreboard players operation @s exp.unique_id = @e[type=minecraft:armor_stand,tag=exp.room_origin,limit=1,sort=nearest] exp.unique_id

function expansion:items/transporter/save_dimension

# determine the unique position of the room using the room_id
execute in expansion:transporter_utility run tp @s 16 128 0
execute in expansion:transporter_utility unless data entity @s ArmorItems[0].tag{return_dim:-1} unless data entity @s ArmorItems[0].tag{return_dim:7} unless data entity @s ArmorItems[0].tag{return_dim:8} positioned 16 128 0 store result entity @s Pos[0] double 0.01 run scoreboard players get @s exp.unique_id
execute in expansion:transporter_utility if data entity @s ArmorItems[0].tag{return_dim:-1} positioned 16 128 0 store result entity @s Pos[0] double 0.00125 run scoreboard players get @s exp.unique_id
execute in expansion:transporter_utility if data entity @s ArmorItems[0].tag{return_dim:7} positioned 16 128 0 store result entity @s Pos[0] double 0.01 run scoreboard players get @s exp.unique_id
execute in expansion:transporter_utility if data entity @s ArmorItems[0].tag{return_dim:8} positioned 16 128 0 store result entity @s Pos[0] double 0.01 run scoreboard players get @s exp.unique_id

# teleport the player to the unique position in the storage dimension
execute in expansion:transporter_utility at @s in expansion:storage align xyz run function expansion:items/transporter/transport_player
