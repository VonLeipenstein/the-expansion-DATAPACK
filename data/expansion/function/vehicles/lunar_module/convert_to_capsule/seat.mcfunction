# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/convert_to_capsule/seat
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/lunar_module/convert_to_capsule/root (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on passengers run tag @s[tag=exp.module_pilot] add exp.move_pilot
execute on passengers run tag @s[tag=!exp.module_pilot] add exp.move_passenger
execute on passengers run ride @s dismount
function expansion:utilities/erase_entity