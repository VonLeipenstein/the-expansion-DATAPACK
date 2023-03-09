scoreboard players operation @s exp.hold_value = @s exp.fuel_level
scoreboard players operation @s exp.hold_value *= #100 exp.const
execute store result score @s exp.fuel_percentage run scoreboard players operation @s exp.hold_value /= @s exp.fuel_max