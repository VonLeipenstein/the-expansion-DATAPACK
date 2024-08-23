# set some scores to avoid entity selection
scoreboard players operation #temp exp.dim_test = @s exp.dim_test
scoreboard players operation #temp exp.unique_id = @s exp.unique_id
scoreboard players operation #temp exp.x = @s exp.x
scoreboard players operation #temp exp.y = @s exp.y
scoreboard players operation #temp exp.z = @s exp.z

# generate the room if this is the first time entering the pocket space
execute if entity @s[tag=exp.room_generator] run function expansion:items/transporter/first_transport/generate_room

# merge the return coordinates with the return beacon
execute unless entity @s[tag=exp.room_generator] as @e[type=minecraft:armor_stand,tag=exp.return_beacon,limit=1,sort=nearest] run function expansion:items/transporter/transport/return_beacon

# remove tag
tag @s remove exp.room_generator
tag @s remove exp.check_loaded