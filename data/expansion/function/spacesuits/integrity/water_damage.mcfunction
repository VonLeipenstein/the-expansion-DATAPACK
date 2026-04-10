# >>> generated function callers >>>
# Callers for expansion:spacesuits/integrity/water_damage
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/integrity/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players operation #temp exp.damage = #suit_water_damage exp.damage

execute if predicate expansion:armor/head unless predicate expansion:armor/diver/head run scoreboard players operation #head exp.damage += #temp exp.damage
execute if predicate expansion:armor/chest unless predicate expansion:armor/diver/chest run scoreboard players operation #chest exp.damage += #temp exp.damage
execute if predicate expansion:armor/legs unless predicate expansion:armor/diver/legs run scoreboard players operation #legs exp.damage += #temp exp.damage
execute if predicate expansion:armor/feet unless predicate expansion:armor/diver/feet run scoreboard players operation #feet exp.damage += #temp exp.damage