# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/propulsion/move
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/buggy/propulsion/drive (1 caller) [OK same-folder]
# <<< generated function callers <<<

# calculate sin of the angle
function expansion:utilities/math/sin
execute if score #angle exp.math matches -180..0 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #sin_tet exp.math = #num exp.math

# calculate cos of the angle
function expansion:utilities/math/cos
execute if score #angle exp.math matches -90..90 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #cos_tet exp.math = #num exp.math

# incorporate the speed mod into the speed. 
scoreboard players operation #temp exp.speed_mod = @s exp.speed
scoreboard players operation #temp exp.speed_mod *= @s exp.speed_mod
scoreboard players operation #temp exp.speed_mod /= #10 exp.const

# multiply the motion values with the speed.
scoreboard players operation #sin_tet exp.math *= #temp exp.speed_mod
scoreboard players operation #cos_tet exp.math *= #temp exp.speed_mod

# merge angle into rotation
execute store result entity @s Motion[0] double -0.0001 run scoreboard players get #sin_tet exp.math
execute store result entity @s Motion[2] double -0.0001 run scoreboard players get #cos_tet exp.math
