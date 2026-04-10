# >>> generated function callers >>>
# Callers for expansion:spacesuits/temperature_damage/damage_all
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:spacesuits/integrity/missing_piece (1 caller) [WARN side/down 2]
# - function expansion:spacesuits/temperature_damage/add (1 caller) [OK same-folder]
# <<< generated function callers <<<

# only add damage value to expansion armor
execute if predicate expansion:armor/head run scoreboard players operation #helmet exp.damage += #temp exp.damage
execute if predicate expansion:armor/chest run scoreboard players operation #chestpiece exp.damage += #temp exp.damage
execute if predicate expansion:armor/legs run scoreboard players operation #leggings exp.damage += #temp exp.damage
execute if predicate expansion:armor/feet run scoreboard players operation #boots exp.damage += #temp exp.damage