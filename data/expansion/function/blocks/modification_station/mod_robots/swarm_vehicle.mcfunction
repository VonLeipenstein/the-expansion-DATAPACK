# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/mod_robots/swarm_vehicle
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/main (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

tag @s add exp.current_drone

execute on passengers on origin facing entity @s eyes as @e[type=item_display,tag=exp.current_drone,distance=..0.01,limit=1] positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.4 ~ ~

execute on passengers on origin if entity @s[distance=..8] run particle firework ~ ~ ~ 0 0 0 0 1

execute at @s if predicate expansion:chance/010_chance run rotate @s ~10 ~

tag @s remove exp.current_drone
