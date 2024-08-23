# check if this pocket space has already registered an exit location, the player has made a loop
execute if score @s exp.dim_test matches -10.. unless score @s exp.dim_test = #temp exp.dim_test run function expansion:items/transporter/loop/punishment

# initiate the data item
item replace entity @s[tag=!exp.added_data] armor.head with jigsaw[minecraft:custom_model_data=124401]
data merge entity @s[tag=!exp.added_data] {Silent:1b,Marker:1b,Invisible:1b}

# add an entry for a return position
data modify entity @s ArmorItems[3].components.minecraft:custom_data.returns prepend value {position:{},dimension:0,id:0}

# fill in the data
execute store result entity @s ArmorItems[3].components.minecraft:custom_data.returns[0].position.x double 1 run scoreboard players get #temp exp.x
execute store result entity @s ArmorItems[3].components.minecraft:custom_data.returns[0].position.y double 1 run scoreboard players get #temp exp.y
execute store result entity @s ArmorItems[3].components.minecraft:custom_data.returns[0].position.z double 1 run scoreboard players get #temp exp.z
execute store result entity @s ArmorItems[3].components.minecraft:custom_data.returns[0].dimension double 1 run scoreboard players get #temp exp.dim_test
execute store result entity @s ArmorItems[3].components.minecraft:custom_data.returns[0].id double 1 run scoreboard players get #temp exp.unique_id

# reset the scores
scoreboard players reset #temp exp.dim_test
scoreboard players reset #temp exp.unique_id
scoreboard players reset #temp exp.x
scoreboard players reset #temp exp.y
scoreboard players reset #temp exp.z

# tags
tag @s add exp.return_beacon
tag @s add exp.added_data