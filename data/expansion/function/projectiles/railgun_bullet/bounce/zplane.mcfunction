# >>> generated function callers >>>
# Callers for expansion:projectiles/railgun_bullet/bounce/zplane
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/railgun_bullet/bounce/loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players set #temp exp.math 1800
execute store result score #temp2 exp.math run data get entity @s Rotation[0] 10.0

# flip the rotation
execute store result entity @s Rotation[0] float 0.1 run scoreboard players operation #temp exp.math -= #temp2 exp.math

function expansion:projectiles/railgun_bullet/bounce/bounce