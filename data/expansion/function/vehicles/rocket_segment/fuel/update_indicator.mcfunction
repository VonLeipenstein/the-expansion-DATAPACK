execute on vehicle run function expansion:utilities/fuel_percentage
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 on vehicle run scoreboard players get @s exp.fuel_percentage
scoreboard players reset @s exp.fuel_percentage