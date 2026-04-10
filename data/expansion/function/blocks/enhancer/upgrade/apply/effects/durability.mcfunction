# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/effects/durability
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/effects/init_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Display the added percentage in the item lore
data merge storage expansion:temp {durability:[{text:"+",color:"green"},{score:{name:"#temp",objective:"exp.max_health"}},{text:"%"}]}
execute if score #temp exp.max_health matches ..-1 run data modify storage expansion:temp durability[0] set value {text:"",color:"red"}
item modify entity @s contents expansion:space_equipment/set_durability_lore
data remove storage expansion:temp durability

# the accumulated durability modifier is a percentage of extra durability based on the current max health of the suit
execute store result score #max_damage exp.math run data get entity @s item.components."minecraft:custom_data".max_damage.base

# get the fraction of durability the modules should add (times 100) (make sure it stays above 1)
scoreboard players operation #temp exp.max_health *= #max_damage exp.math
scoreboard players operation #temp exp.max_health /= #100 exp.const
scoreboard players operation #max_damage exp.math += #temp exp.max_health
execute unless score #max_damage exp.math matches 1.. run scoreboard players set #max_damage exp.math 1

# merge this with the max_damage
execute store result entity @s item.components."minecraft:max_damage" int 1 run scoreboard players get #max_damage exp.math

# reset scores
data remove storage expansion:temp durability
scoreboard players reset #max_damage exp.math
scoreboard players reset #temp exp.max_health