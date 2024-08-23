# vertical rotation
scoreboard players operation #input exp.math = #yaw exp.math
scoreboard players operation #input exp.math /= #1000 exp.const
execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const
function expansion:utilities/math/sin
execute if score #yaw exp.math matches -180000..0 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #sin_tet exp.math = #num exp.math

function expansion:utilities/math/cos
execute if score #yaw exp.math matches -90000..90000 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #cos_tet exp.math = #num exp.math

# horizontal rotation
scoreboard players operation #input exp.math = #pitch exp.math
scoreboard players operation #input exp.math /= #1000 exp.const
execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const
function expansion:utilities/math/sin
execute if score #pitch exp.math matches 0..90000 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #sin_phi exp.math = #num exp.math

function expansion:utilities/math/cos
scoreboard players operation #cos_phi exp.math = #num exp.math

# calculate the motion values for each axis.
execute store result score #velocity_x exp.math run scoreboard players operation #sin_tet exp.math *= #cos_phi exp.math
scoreboard players operation #velocity_y exp.math = #sin_phi exp.math
execute store result score #velocity_z exp.math run scoreboard players operation #cos_tet exp.math *= #cos_phi exp.math

# incorporate the speed mod into the speed. 
scoreboard players operation #temp exp.speed_mod = @s exp.speed
scoreboard players operation #temp exp.speed_mod *= @s exp.speed_mod
scoreboard players operation #temp exp.speed_mod /= #10 exp.const

# multiply the motion values with the speed.
scoreboard players operation #velocity_x exp.math *= #temp exp.speed_mod
scoreboard players operation #velocity_y exp.math *= #temp exp.speed_mod
scoreboard players operation #velocity_z exp.math *= #temp exp.speed_mod
