# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/propulsion/motion_calculation
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/propulsion/fly (1 caller) [OK same-folder]
# <<< generated function callers <<<

# vertical rotation
scoreboard players operation #input exp.math = @s exp.yaw
scoreboard players operation #input exp.math /= #1000 exp.const
execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const
function expansion:utilities/math/sin
execute if score @s exp.yaw matches -180000..0 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #sin_tet exp.math = #num exp.math

function expansion:utilities/math/cos
execute if score @s exp.yaw matches -90000..90000 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #cos_tet exp.math = #num exp.math

# horizontal rotation
scoreboard players operation #input exp.math = @s exp.pitch
scoreboard players operation #input exp.math /= #1000 exp.const
execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const
function expansion:utilities/math/sin
execute if score @s exp.pitch matches 0..90000 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #sin_phi exp.math = #num exp.math

function expansion:utilities/math/cos
scoreboard players operation #cos_phi exp.math = #num exp.math

# calculate the motion values for each axis.
execute store result score #velocity_x exp.math run scoreboard players operation #sin_tet exp.math *= #cos_phi exp.math
scoreboard players operation #velocity_y exp.math = #sin_phi exp.math
execute store result score #velocity_z exp.math run scoreboard players operation #cos_tet exp.math *= #cos_phi exp.math

# multiply the motion values with the speed.
scoreboard players operation #velocity_x exp.math *= @s exp.speed
scoreboard players operation #velocity_y exp.math *= @s exp.speed
scoreboard players operation #velocity_z exp.math *= @s exp.speed

# merge the calculated vector with the motion and make the armor stand move.
execute store result storage expansion:motion Motion[0] double -0.000001 run scoreboard players get #velocity_x exp.math
execute store result storage expansion:motion Motion[1] double 0.0001 run scoreboard players get #velocity_y exp.math
execute store result storage expansion:motion Motion[2] double -0.000001 run scoreboard players get #velocity_z exp.math
data modify entity @s Motion set from storage expansion:motion Motion