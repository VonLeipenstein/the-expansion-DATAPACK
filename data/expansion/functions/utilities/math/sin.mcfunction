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
scoreboard players operation #denum exp.math = #factor1 exp.math
scoreboard players operation #denum exp.math *= #input exp.math
scoreboard players operation #denum exp.math -= #40500 exp.const
scoreboard players operation #denum exp.math *= #-1 exp.const

# calculate output
scoreboard players operation #num exp.math /= #denum exp.math



