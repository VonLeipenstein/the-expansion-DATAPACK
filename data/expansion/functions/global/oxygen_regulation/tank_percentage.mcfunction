scoreboard players set @s exp.fuel_max 96000
scoreboard players operation @s exp.hold_value_alt = @s exp.hold_value
scoreboard players operation @s exp.hold_value_alt *= #100 exp.const
scoreboard players operation @s exp.hold_value_alt /= @s exp.fuel_max
scoreboard players operation @s exp.fuel_percentage = @s exp.hold_value_alt