# fill in the data
execute store result score #temp exp.x run data get entity @s ArmorItems[3].components.minecraft:custom_data.returns[0].position.x
execute store result score #temp exp.y run data get entity @s ArmorItems[3].components.minecraft:custom_data.returns[0].position.y
execute store result score #temp exp.z run data get entity @s ArmorItems[3].components.minecraft:custom_data.returns[0].position.z
execute store result score #temp exp.dim_test run data get entity @s ArmorItems[3].components.minecraft:custom_data.returns[0].dimension

# return the player
execute at @s summon minecraft:armor_stand at @s run function expansion:items/transporter/return/finish

# remove the return entry
data remove entity @s ArmorItems[3].components.minecraft:custom_data.returns[0]