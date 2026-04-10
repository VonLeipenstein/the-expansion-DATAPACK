# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/fuel/update_cell
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/fuel/swap_cell (1 caller) [OK same-folder]
# <<< generated function callers <<<

# calculate current fuel percentage of the ship
execute on vehicle run function expansion:utilities/fuel_percentage

# update the fuel cell in the ship
execute store result entity @s item.components."minecraft:custom_data".fuel.lvl int 1 on vehicle run scoreboard players get @s exp.fuel_level
execute store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 on vehicle run scoreboard players get @s exp.fuel_percentage
execute on vehicle run scoreboard players operation #temp exp.percentage = @s exp.fuel_percentage
item modify entity @s contents expansion:fuel_cell/merge_percent_from_score