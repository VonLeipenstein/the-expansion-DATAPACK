scoreboard players operation #temp exp.math = @s exp.hold_value
scoreboard players operation #temp exp.math *= #100 exp.const
scoreboard players operation #temp exp.math /= @s exp.fuel_max
scoreboard players operation @s exp.fuel_percentage = #temp exp.math
scoreboard players reset #temp exp.math