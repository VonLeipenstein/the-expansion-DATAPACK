# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/convert_to_module/player
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket/convert_to_module/root (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s add exp.inside_module
tag @s remove exp.inside_rocket

execute if entity @s[tag=exp.rocket_pilot] run tag @s add exp.module_pilot
execute if entity @s[tag=exp.rocket_pilot] run tag @s remove exp.rocket_pilot
