# >>> generated function callers >>>
# Callers for expansion:items/fuel_cell/craft_mk2
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# copy the fuel level of the mk1 tank used in the recipe to the mk2 tank
loot replace entity @s contents loot expansion:tools/fuel_cell/tier2/empty

# copy the recipe tanks stats to the new tank
data modify entity @s item.components."minecraft:custom_data".fuel.lvl set from block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_data".fuel.lvl

# update the new tanks sprite and percentage
execute store result score #input exp.math run data get entity @s item.components."minecraft:custom_data".fuel.lvl
execute store result score #max exp.math run data get entity @s item.components."minecraft:custom_data".fuel.max
execute store result score #temp exp.percentage run function expansion:utilities/percentage

item modify entity @s contents expansion:fuel_cell/merge_percent_from_score
execute store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players get #temp exp.percentage

scoreboard players reset #temp exp.oxygen_percent