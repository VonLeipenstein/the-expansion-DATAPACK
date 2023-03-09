# calculate percentage of speed
scoreboard players operation #speed exp.math = @s exp.speed
scoreboard players remove #speed exp.math 10
scoreboard players operation #speed exp.math *= #100 exp.const
execute store result score @s exp.hold_value_alt run scoreboard players operation #speed exp.math /= #90 exp.const 