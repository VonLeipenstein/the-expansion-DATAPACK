# >>> generated function callers >>>
# Callers for expansion:mobs/evil_drone/drone_home/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute at @s unless entity @s[tag=exp.reached_spawn_cap] if predicate expansion:dimension/moon unless entity @e[type=minecraft:armor_stand,tag=exp.evil_drone,distance=..30,limit=1,sort=nearest] unless entity @p[distance=..30] run function expansion:mobs/evil_drone/summon/ranged