# only needs a #input, which is the angle over which to compute the sin

# (400 * x * (180 - x)) / (40500 - x * (180 - x))

# calculate (180 - x)
scoreboard players operation #factor1 exp.math = #180 exp.const
scoreboard players operation #factor1 exp.math -= #input exp.math

# calculate numerator
scoreboard players operation #num exp.math = #factor1 exp.math
scoreboard players operation #num exp.math *= #input exp.math
scoreboard players operation #num exp.math *= #400 exp.const

# calculate denumerator
execute store result score #denum exp.math run scoreboard players operation #factor1 exp.math *= #input exp.math
scoreboard players remove #denum exp.math 40500
scoreboard players operation #denum exp.math *= #-1 exp.const

# calculate output
scoreboard players operation #num exp.math /= #denum exp.math



