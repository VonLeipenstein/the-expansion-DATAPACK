# calculate current fuel percentage of the ship
execute on vehicle run function expansion:utilities/fuel_percentage

# update the fuel cell in the ship
execute store result entity @s item.components."minecraft:custom_data".fuel.lvl int 1 on vehicle run scoreboard players get @s exp.fuel_level
execute store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 on vehicle run scoreboard players get @s exp.fuel_percentage
execute on vehicle run scoreboard players operation #temp exp.percentage = @s exp.fuel_percentage
item modify entity @s contents expansion:fuel_cell/merge_percent_from_score