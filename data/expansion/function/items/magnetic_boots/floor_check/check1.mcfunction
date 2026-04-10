# >>> generated function callers >>>
# Callers for expansion:items/magnetic_boots/floor_check/check1
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/magnetic_boots/main (1 caller) [OK above +1]
# <<< generated function callers <<<

tag @s[tag=exp.no_floor] remove exp.no_floor
execute positioned ~ ~-1 ~ if block ~ ~ ~ #expansion:air run function expansion:items/magnetic_boots/floor_check/check2