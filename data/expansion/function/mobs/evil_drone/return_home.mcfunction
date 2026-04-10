# >>> generated function callers >>>
# Callers for expansion:mobs/evil_drone/return_home
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/evil_drone/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute anchored eyes facing entity @n[type=minecraft:armor_stand,tag=exp.drone_home] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-2 positioned as @s run tp @s ^ ^ ^0.8 ~ ~

execute unless block ^ ^ ^1 #expansion:air run tag @s remove exp.home_too_far
execute if entity @n[type=minecraft:armor_stand,tag=exp.drone_home,distance=..10] run function expansion:mobs/evil_drone/arrived_home