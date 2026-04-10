# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/effects/oxygen_percent
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/effects/init_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# merge the oxygen percentage with the equipment
scoreboard players operation #input exp.math = #temp exp.oxygen_lvl
scoreboard players operation #max exp.math = #temp exp.oxygen_max
function expansion:utilities/percentage
item modify entity @s contents expansion:space_equipment/insert_oxygen_lore