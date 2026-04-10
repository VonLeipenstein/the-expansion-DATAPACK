# >>> generated function callers >>>
# Callers for expansion:blocks/lacrymae_extractor/extract/finish
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/lacrymae_extractor/extract/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# particles
playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~
particle minecraft:cloud ~ ~0.7 ~ 0.3 0.3 0.3 0 50

# increase the cells fuel lvl
execute store result score #temp exp.fuel_level run data get block ~ ~ ~ Items[{Slot:6b}].components."minecraft:custom_data".fuel.lvl
execute store result score #temp exp.fuel_max run data get block ~ ~ ~ Items[{Slot:6b}].components."minecraft:custom_data".fuel.max

# Add a bound random amount to the fuel level of the cell
execute store result score #add exp.fuel_level run random value 8000..12000
scoreboard players operation #temp exp.fuel_level += #add exp.fuel_level

# merge the new fuel level with the cell
execute if score #temp exp.fuel_level > #temp exp.fuel_max run scoreboard players operation #temp exp.fuel_level = #temp exp.fuel_max
execute store result block ~ ~ ~ Items[{Slot:6b}].components."minecraft:custom_data".fuel.lvl int 1 run scoreboard players get #temp exp.fuel_level

# calculate cells new percentage
scoreboard players operation #input exp.math = #temp exp.fuel_level
scoreboard players operation #max exp.math = #temp exp.fuel_max
execute store result score #temp exp.percentage run function expansion:utilities/percentage
item modify block ~ ~ ~ container.6 expansion:fuel_cell/merge_percent_from_score

# update the cells custom model data
execute store result block ~ ~ ~ Items[{Slot:6b}].components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players get #temp exp.percentage

# convert a crying obsidian to obsidian
item modify block ~ ~ ~ container.1 expansion:utility/reduce_count
execute if items block ~ ~ ~ container.8 obsidian run item modify block ~ ~ ~ container.8 expansion:utility/increase_count
execute unless items block ~ ~ ~ container.8 obsidian run item replace block ~ ~ ~ container.8 with obsidian

# reset scores
scoreboard players reset #temp exp.fuel_level
scoreboard players reset #temp exp.fuel_max
scoreboard players reset #temp exp.percentage
scoreboard players reset #add exp.fuel_level
scoreboard players reset @s exp.timer_1