execute if score @s exp.fuel_percentage matches 0..14 run scoreboard players set @s exp.hold_value 1012250
execute if score @s exp.fuel_percentage matches 15..24 run scoreboard players set @s exp.hold_value 1012251
execute if score @s exp.fuel_percentage matches 25..34 run scoreboard players set @s exp.hold_value 1012252
execute if score @s exp.fuel_percentage matches 35..49 run scoreboard players set @s exp.hold_value 1012253
execute if score @s exp.fuel_percentage matches 50..64 run scoreboard players set @s exp.hold_value 1012254
execute if score @s exp.fuel_percentage matches 65..74 run scoreboard players set @s exp.hold_value 1012255
execute if score @s exp.fuel_percentage matches 75..84 run scoreboard players set @s exp.hold_value 1012256
execute if score @s exp.fuel_percentage matches 85..94 run scoreboard players set @s exp.hold_value 1012257
execute if score @s exp.fuel_percentage matches 95..100 run scoreboard players set @s exp.hold_value 1012258
execute store result storage expansion:oxygen_oxygen_lvl data.tank_cmd int 1 run scoreboard players get @s exp.hold_value