# set some scores to avoid entity selection
scoreboard players operation #temp exp.dim_test = @s exp.dim_test
scoreboard players operation #temp exp.x = @s exp.x
scoreboard players operation #temp exp.y = @s exp.y
scoreboard players operation #temp exp.z = @s exp.z

# return the player
execute at @s summon minecraft:armor_stand run function expansion:items/transporter/return