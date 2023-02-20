# calculate sin of the angle
function expansion:utilities/math/sin
execute if score #angle exp.math matches -180..0 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #sin_tet exp.math = #num exp.math

# calculate cos of the angle
function expansion:utilities/math/cos
execute if score #angle exp.math matches -90..90 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #cos_tet exp.math = #num exp.math

# multiply the motion value with the speed
scoreboard players operation #sin_tet exp.math *= @s exp.speed
scoreboard players operation #cos_tet exp.math *= @s exp.speed

# merge angle into rotation
execute store result entity @s Motion[0] double -0.0001 run scoreboard players get #sin_tet exp.math
execute store result entity @s Motion[2] double -0.0001 run scoreboard players get #cos_tet exp.math
