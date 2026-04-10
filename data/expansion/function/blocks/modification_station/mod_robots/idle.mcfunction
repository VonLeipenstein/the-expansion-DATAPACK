# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/mod_robots/idle
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# stay close to the modstation
execute positioned ~ ~3 ~ anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.1 ~ 0

execute if predicate expansion:chance/010_chance rotated as @s run rotate @s ~10 ~