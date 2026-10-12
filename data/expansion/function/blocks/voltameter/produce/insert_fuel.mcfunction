scoreboard players set #source exp.unique_id 1
execute store result score #target exp.unique_id run data get entity @s item.components."minecraft:custom_data".fuel.id
execute unless function expansion:blocks/voltameter/produce/same_fuel run return fail

# particles
playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~
particle minecraft:cloud ~ ~0.7 ~ 0.3 0.3 0.3 0 50

# increase the cells fuel lvl
execute store result score #temp exp.fuel_level run data get entity @s item.components."minecraft:custom_data".fuel.lvl
execute store result score #temp exp.fuel_max run data get entity @s item.components."minecraft:custom_data".fuel.max

# Add a bound random amount to the fuel level of the cell
execute store result score #add exp.fuel_level run random value 5..12
scoreboard players operation #temp exp.fuel_level += #add exp.fuel_level

# merge the new fuel level with the cell
execute if score #temp exp.fuel_level > #temp exp.fuel_max run scoreboard players operation #temp exp.fuel_level = #temp exp.fuel_max
execute store result entity @s item.components."minecraft:custom_data".fuel.lvl int 1 run scoreboard players get #temp exp.fuel_level

# update fuel id
# 0 for empty
# 1 for hydrogen
# 2 for lacrymae
data modify entity @s item.components."minecraft:custom_data".fuel.id set value 1
item modify entity @s contents expansion:fuel_cell/set_hydrogen
data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "hydrogen"

# calculate cells new percentage
scoreboard players operation #input exp.math = #temp exp.fuel_level
scoreboard players operation #max exp.math = #temp exp.fuel_max
execute store result score #temp exp.percentage run function expansion:utilities/percentage
item modify entity @s contents expansion:fuel_cell/merge_percent_from_score

# update the cells custom model data
execute store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players get #temp exp.percentage

# reset scores
scoreboard players reset #temp exp.fuel_level
scoreboard players reset #temp exp.fuel_max
scoreboard players reset #temp exp.percentage
scoreboard players reset #add exp.fuel_level
scoreboard players reset @s exp.timer_1