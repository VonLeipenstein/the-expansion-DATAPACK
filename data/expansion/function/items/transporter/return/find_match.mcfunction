# move the first element of the array to the back
data modify entity @s ArmorItems[3].components.minecraft:custom_data.returns append from entity @s ArmorItems[3].components.minecraft:custom_data.returns[0]

# remove the first element
data remove entity @s ArmorItems[3].components.minecraft:custom_data.returns[0]

# check the new first elements id
execute store result score #temp exp.unique_id run data get entity @s ArmorItems[3].components.minecraft:custom_data.returns[0].id

# repeat this until a match is found
execute unless score #temp exp.unique_id = @p[tag=exp.returning] exp.unique_id run function expansion:items/transporter/return/find_match


