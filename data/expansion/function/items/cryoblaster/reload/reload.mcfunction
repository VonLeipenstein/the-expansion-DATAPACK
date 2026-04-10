# >>> generated function callers >>>
# Callers for expansion:items/cryoblaster/reload/reload
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/cryoblaster/reload/check (1 caller) [OK same-folder]
# <<< generated function callers <<<

clear @s potion[potion_contents={potion:"minecraft:water"}] 1
give @s minecraft:glass_bottle 1

scoreboard players set #temp exp.ammo 50
