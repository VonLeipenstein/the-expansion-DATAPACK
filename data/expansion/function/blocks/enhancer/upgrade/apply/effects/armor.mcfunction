## get the base armor modifier value, add the accumulated modifier from all the modules, merge the new value

# get teh base armor value
execute store result score #base exp.armor run data get entity @s item.components."minecraft:custom_data".armor.base

# add the module armor value
scoreboard players operation #temp exp.armor += #base exp.armor

# merge the total back to the attribute modifier
execute store result entity @s item.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}].amount double 1 run scoreboard players get #temp exp.armor

# reset scores
scoreboard players reset #base exp.armor
scoreboard players reset #temp exp.armor