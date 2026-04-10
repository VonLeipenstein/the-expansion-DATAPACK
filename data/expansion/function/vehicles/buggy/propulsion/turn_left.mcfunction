# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/propulsion/turn_left
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/buggy/propulsion/drive (1 caller) [OK same-folder]
# <<< generated function callers <<<

rotate @s[tag=exp.buggy_turn] ~-4 ~

execute store result score @s exp.yaw run data get entity @s Rotation[0]