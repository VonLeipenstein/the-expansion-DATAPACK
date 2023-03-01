scoreboard players add @s exp.fuel_level 40
clear @p minecraft:blaze_powder 1
execute unless score @s exp.fuel_level >= @s exp.fuel_max if entity @p[nbt={Inventory:[{id:"minecraft:blaze_powder"}]}] run function expansion:vehicles/rocket/fuel_loop