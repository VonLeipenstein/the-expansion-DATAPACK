# >>> generated function callers >>>
# Callers for expansion:vehicles/return_capsule/exit
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:player/death (1 caller) [WARN side/down 3]
# - function expansion:vehicles/exit (1 caller) [OK above +1]
# <<< generated function callers <<<

execute at @e[type=minecraft:armor_stand,tag=exp.return_capsule,limit=1,sort=nearest] positioned ^ ^ ^1.5 if block ~ ~ ~ #expansion:air if block ~ ~1 ~ #expansion:air run tp @s ~ ~ ~

tag @s remove exp.inside_capsule
tag @s remove exp.inside_vehicle