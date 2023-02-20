scoreboard players operation @s exp.hold_value = @s exp.oxygen_level
scoreboard players operation @s exp.hold_value *= #100 exp.const
scoreboard players operation @s exp.hold_value /= @s exp.oxygen_max
scoreboard players operation @s exp.oxygen_percent = @s exp.hold_value