# get the capacity of this oxygen tank
execute store result score #temp exp.oxygen_max run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.max

# assume that the oxygen level can be equal to the total oxygen level of the player
scoreboard players operation #temp exp.oxygen_lvl = #input exp.oxygen_lvl

# however, if the players oxygen level exceeds the tank capacity, set it equal to the tank capacity
execute if score #temp exp.oxygen_lvl > #temp exp.oxygen_max run scoreboard players operation #temp exp.oxygen_lvl = #temp exp.oxygen_max

# if the score exceeded the tank capacity, remove the tank capacity from the total oxygen score. If not, remove the 
scoreboard players operation #input exp.oxygen_lvl -= #temp exp.oxygen_max
execute unless score #input exp.oxygen_lvl matches 0.. run scoreboard players set #input exp.oxygen_lvl 0

# merge the new oxygen value with this tank
execute store result storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.lvl int 1 run scoreboard players get #temp exp.oxygen_lvl

# calculate the percentage and merge it with the custom model data of the tank
scoreboard players operation #input exp.math = #temp exp.oxygen_lvl
scoreboard players operation #max exp.math = #temp exp.oxygen_max
execute store result storage expansion:temp ModStorage[0].components."minecraft:custom_model_data".floats[1] float 1 run function expansion:utilities/percentage