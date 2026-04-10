# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/exit/init
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:player/death (1 caller) [WARN side/down 4]
# - function expansion:vehicles/exit (1 caller) [OK above +2]
# <<< generated function callers <<<

execute as @n[type=armor_stand,tag=exp.moon_buggy,predicate=!expansion:passengers/player] run function expansion:vehicles/buggy/exit/main
tag @s remove exp.inside_buggy
tag @s remove exp.inside_vehicle