# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/propulsion/move
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/propulsion/drive (1 caller) [OK same-folder]
# <<< generated function callers <<<

# find the rotation in which motion has to be applied
function expansion:vehicles/mech/propulsion/find_motion_angle

# calculate sin of the angle
function expansion:utilities/math/sin
execute if score #angle exp.math matches -180..0 run scoreboard players operation #num exp.math *= #-1 exp.const
execute store result entity @s Motion[0] double -0.0003 run scoreboard players operation #num exp.math *= @s exp.speed

# calculate cos of the angle
function expansion:utilities/math/cos
execute if score #angle exp.math matches -90..90 run scoreboard players operation #num exp.math *= #-1 exp.const
execute store result entity @s Motion[2] double -0.0003 run scoreboard players operation #num exp.math *= @s exp.speed