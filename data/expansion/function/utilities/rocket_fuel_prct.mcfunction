scoreboard players operation @s exp.hold_value = @s exp.fuel_level
scoreboard players operation @s exp.hold_value *= #100 exp.const
scoreboard players operation @s exp.hold_value /= @s exp.fuel_max
scoreboard players operation @s exp.fuel_percentage = @s exp.hold_value