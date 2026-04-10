# >>> generated function callers >>>
# Callers for expansion:mobs/evil_drone/death
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:mobs/evil_drone/hurt (1 caller) [OK same-folder]
# - function expansion:mobs/evil_drone/no_passenger (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on passengers run kill @s
execute on vehicle on passengers run kill @s
execute on vehicle run kill @s
kill @s

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
particle minecraft:lava ~ ~ ~ 0 0 0 1 10

playsound entity.generic.explode hostile @a ~ ~ ~ 0.7

function expansion:utilities/erase_entity
loot spawn ~ ~ ~ loot expansion:mobs/evil_drone