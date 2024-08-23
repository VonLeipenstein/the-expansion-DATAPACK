scoreboard players operation #temp exp.math = #input exp.oxygen_lvl
scoreboard players operation #temp exp.math *= #100 exp.const
scoreboard players operation #temp exp.math /= #input exp.oxygen_max
scoreboard players operation #output exp.oxygen_percent = #temp exp.math

scoreboard players reset #input exp.oxygen_lvl
scoreboard players reset #input exp.oxygen_max
scoreboard players reset #temp exp.math

return run scoreboard players get #output exp.oxygen_percent