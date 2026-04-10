# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/effects/cold_resist
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/effects/init_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute store result entity @s item.components."minecraft:custom_data".cold_resist.modifier int 1 run scoreboard players get #temp exp.cold_resist
execute store result score #base exp.math run data get entity @s item.components."minecraft:custom_data".cold_resist.base
scoreboard players operation #temp exp.cold_resist += #base exp.math
execute store result entity @s item.components."minecraft:custom_data".cold_resist.total int 1 run scoreboard players get #temp exp.cold_resist

data merge storage expansion:temp {cold_resist:[{text:"",color:"green"},{score:{name:"#temp",objective:"exp.cold_resist"}}]}
execute if score #temp exp.cold_resist matches ..-1 run data modify storage expansion:temp cold_resist[0].color set value "red"
item modify entity @s contents expansion:space_equipment/set_coldresist_lore
data remove storage expansion:temp cold_resist

scoreboard players reset #temp exp.cold_resist
scoreboard players reset #base exp.math