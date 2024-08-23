scoreboard players set @s exp.hold_value -1
scoreboard players operation @s exp.value *= @s exp.hold_value
scoreboard players set @s exp.hold_value 150000
scoreboard players operation @s exp.value += @s exp.hold_value