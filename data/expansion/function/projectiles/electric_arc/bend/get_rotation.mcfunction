# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/bend/get_rotation
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:projectiles/electric_arc/bend/towards_target (1 caller) [OK same-folder]
# - function expansion:projectiles/electric_arc/cast (1 caller) [OK above +1]
# <<< generated function callers <<<

# get the initial rotation data from the entity so we can keep track of this to avoid any data get rotation checks
data modify storage expansion:rotation Rotation set from entity @s Rotation

execute store result score @s exp.yaw run data get storage expansion:rotation Rotation[0]
execute store result score @s exp.pitch run data get storage expansion:rotation Rotation[1]