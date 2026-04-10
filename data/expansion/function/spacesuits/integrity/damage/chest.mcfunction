# >>> generated function callers >>>
# Callers for expansion:spacesuits/integrity/damage/chest
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/integrity/main (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players operation #temp exp.damage = #chestpiece exp.damage
scoreboard players operation #temp exp.max_health = #chestpiece exp.max_health
function expansion:spacesuits/temperature_damage/convert_to_percentage

item modify entity @s armor.chest expansion:space_equipment/damage