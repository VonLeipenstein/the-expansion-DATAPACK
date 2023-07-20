# calculate sin of the angle
function expansion:utilities/math/sin
execute if score #angle exp.math matches -180..0 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #sin_tet exp.math = #num exp.math
execute if score .s exp.wasd matches 1 run scoreboard players operation #sin_tet exp.math *= #-1 exp.const

# calculate cos of the angle
function expansion:utilities/math/cos
execute if score #angle exp.math matches -90..90 run scoreboard players operation #num exp.math *= #-1 exp.const
scoreboard players operation #cos_tet exp.math = #num exp.math
execute if score .s exp.wasd matches 1 run scoreboard players operation #cos_tet exp.math *= #-1 exp.const

# merge angle into rotation
execute store result entity @s Motion[0] double -0.003 run scoreboard players get #sin_tet exp.math
execute store result entity @s Motion[2] double -0.003 run scoreboard players get #cos_tet exp.math
