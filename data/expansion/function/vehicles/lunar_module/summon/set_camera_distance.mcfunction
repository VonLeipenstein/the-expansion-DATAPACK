# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/summon/set_camera_distance
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:vehicles/lunar_module/summon/setup (1 caller) [OK same-folder]
# - function expansion:vehicles/rocket/convert_to_module/seat (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.module_seats] run attribute @s minecraft:camera_distance base set 8.0