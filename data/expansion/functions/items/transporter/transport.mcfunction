# set the room_id of the armor stand equal to the room_id of the player
scoreboard players operation @s exp.unique_id = @e[type=armor_stand,tag=exp.room_origin,limit=1,sort=nearest] exp.unique_id

function expansion:items/transporter/save_dimension

# determine the unique position of the room using the room_id
execute in expansion:transporter_utility run tp @s 16 128 0
execute in expansion:transporter_utility unless data entity @s ArmorItems[0].tag{return_dim:-1} unless data entity @s ArmorItems[0].tag{return_dim:7} unless data entity @s ArmorItems[0].tag{return_dim:8} positioned 16 128 0 store result entity @s Pos[0] double 0.01 run scoreboard players get @s exp.unique_id
execute in expansion:transporter_utility if data entity @s ArmorItems[0].tag{return_dim:-1} positioned 16 128 0 store result entity @s Pos[0] double 0.00125 run scoreboard players get @s exp.unique_id
execute in expansion:transporter_utility if data entity @s ArmorItems[0].tag{return_dim:7} positioned 16 128 0 store result entity @s Pos[0] double 0.001 run scoreboard players get @s exp.unique_id
execute in expansion:transporter_utility if data entity @s ArmorItems[0].tag{return_dim:8} positioned 16 128 0 store result entity @s Pos[0] double 0.001 run scoreboard players get @s exp.unique_id

# teleport the player to the unique position in the storage dimension
execute in expansion:transporter_utility at @s in expansion:storage align xyz run tp @p[tag=exp.transporting] ~0.5 128 0.5

execute at @p[tag=exp.transporting] run tp @s ~ ~ ~
scoreboard players set @p[tag=exp.transporting] exp.cooldown 100
tag @p[tag=exp.transporting] add exp.tp_rev_prev

