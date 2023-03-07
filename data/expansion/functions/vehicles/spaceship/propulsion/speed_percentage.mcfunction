# calculate percentage of speed
scoreboard players operation #speed exp.math = @s exp.speed
scoreboard players remove #speed exp.math 10
scoreboard players operation #speed exp.math *= #100 exp.const
scoreboard players operation #speed exp.math /= #90 exp.const
scoreboard players operation @s exp.hold_value_alt = #speed exp.math