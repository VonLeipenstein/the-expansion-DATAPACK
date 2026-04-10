# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/exit/init
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:player/death (1 caller) [WARN side/down 4]
# - function expansion:vehicles/exit (1 caller) [OK above +2]
# <<< generated function callers <<<

execute as @n[type=minecraft:armor_stand,tag=exp.lunar_module,distance=..10] run function expansion:vehicles/lunar_module/exit/main

tag @s remove exp.inside_module
tag @s remove exp.inside_vehicle
tag @s remove exp.exiting_module
tag @s remove exp.module_pilot