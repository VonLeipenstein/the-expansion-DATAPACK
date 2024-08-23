# calculate percentage of speed
scoreboard players operation #temp exp.math = @s exp.speed
scoreboard players operation #temp exp.math -= #offset exp.math
scoreboard players operation #temp exp.math *= #100 exp.const
scoreboard players reset #offset exp.math
return run scoreboard players operation #temp exp.math /= #total exp.math