# vertical rotation
scoreboard players operation #input exp.math = #angle_ver exp.math
execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const
function expansion:utilities/math/sin
execute if score #angle_ver exp.math matches -180..0 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #sin_tet exp.math = #num exp.math
function expansion:utilities/math/cos
execute if score #angle_ver exp.math matches -90..90 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #cos_tet exp.math = #num exp.math

# horizontal rotation
scoreboard players operation #input exp.math = #angle_hor exp.math
execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const
function expansion:utilities/math/sin
execute if score #angle_hor exp.math matches 0..90 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #sin_phi exp.math = #num exp.math
function expansion:utilities/math/cos
scoreboard players operation #cos_phi exp.math = #num exp.math

# calculate the motion values for each axis.
scoreboard players operation #velocity_x exp.math = #sin_tet exp.math
scoreboard players operation #velocity_x exp.math *= #cos_phi exp.math
scoreboard players operation #velocity_y exp.math = #sin_phi exp.math
scoreboard players operation #velocity_z exp.math = #cos_tet exp.math
scoreboard players operation #velocity_z exp.math *= #cos_phi exp.math

# multiply the motion values with the speed.
scoreboard players operation #velocity_x exp.math *= @s exp.speed
scoreboard players operation #velocity_y exp.math *= @s exp.speed
scoreboard players operation #velocity_z exp.math *= @s exp.speed
