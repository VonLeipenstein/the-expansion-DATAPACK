# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/landing
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/lunar_module/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if entity @s[nbt={OnGround:1b}] run function expansion:vehicles/lunar_module/touchdown

effect give @s slow_falling 1 1 true