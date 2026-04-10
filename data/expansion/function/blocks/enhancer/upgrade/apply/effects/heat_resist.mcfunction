# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/effects/heat_resist
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/effects/init_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute store result entity @s item.components."minecraft:custom_data".heat_resist.modifier int 1 run scoreboard players get #temp exp.heat_resist
execute store result score #base exp.math run data get entity @s item.components."minecraft:custom_data".heat_resist.base
scoreboard players operation #temp exp.heat_resist += #base exp.math
execute store result entity @s item.components."minecraft:custom_data".heat_resist.total int 1 run scoreboard players get #temp exp.heat_resist

data merge storage expansion:temp {heat_resist:[{text:"",color:"green"},{score:{name:"#temp",objective:"exp.heat_resist"}}]}
execute if score #temp exp.heat_resist matches ..-1 run data modify storage expansion:temp heat_resist[0].color set value "red"
item modify entity @s contents expansion:space_equipment/set_heatresist_lore
data remove storage expansion:temp heat_resist

scoreboard players reset #temp exp.heat_resist
scoreboard players reset #base exp.math
