# aesthetics
execute rotated ~ 0 run particle poof ^ ^1 ^-0.5 0.1 0.1 0.1 0 50
playsound block.lava.extinguish player @a ~ ~ ~

# scoreboard operation witchery
scoreboard players operation @s exp.hold_value_alt = @s exp.oxygen_max
scoreboard players operation @s exp.hold_value_alt -= @s exp.oxygen_level
execute if score @s exp.hold_value_alt > @s exp.hold_value run scoreboard players operation @s exp.hold_value_alt = @s exp.hold_value
scoreboard players operation @s exp.oxygen_level += @s exp.hold_value_alt
scoreboard players operation @s exp.hold_value -= @s exp.hold_value_alt

# merge the scoreboard with the item nbt through the use of a data storage while calculating the percentage
execute store result storage expansion:oxygen_tank_lvl data.tank_lvl int 1 run scoreboard players get @s exp.hold_value
function expansion:mechanics/oxygen/tank_percentage

# changes the model depending on the tank level
execute if score @s exp.fuel_percentage matches 0..14 run scoreboard players set @s exp.hold_value 1012250
execute if score @s exp.fuel_percentage matches 15..24 run scoreboard players set @s exp.hold_value 1012251
execute if score @s exp.fuel_percentage matches 25..34 run scoreboard players set @s exp.hold_value 1012252
execute if score @s exp.fuel_percentage matches 35..49 run scoreboard players set @s exp.hold_value 1012253
execute if score @s exp.fuel_percentage matches 50..64 run scoreboard players set @s exp.hold_value 1012254
execute if score @s exp.fuel_percentage matches 65..74 run scoreboard players set @s exp.hold_value 1012255
execute if score @s exp.fuel_percentage matches 75..84 run scoreboard players set @s exp.hold_value 1012256
execute if score @s exp.fuel_percentage matches 85..94 run scoreboard players set @s exp.hold_value 1012257
execute if score @s exp.fuel_percentage matches 95..100 run scoreboard players set @s exp.hold_value 1012258
execute store result storage expansion:oxygen_tank_lvl data.tank_cmd int 1 run scoreboard players get @s exp.hold_value

# applies changes to the item
item modify entity @s weapon.mainhand expansion:oxygen_tank/score
scoreboard players reset @s exp.hold_value