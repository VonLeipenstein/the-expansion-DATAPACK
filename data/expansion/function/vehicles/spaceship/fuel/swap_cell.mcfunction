## AS ship AT player

# update item value from ship
execute on passengers if entity @s[tag=exp.fuel_slot] run function expansion:vehicles/spaceship/fuel/update_cell

# store player item
data modify storage expansion:temp fuel_cell set from entity @p SelectedItem

# replace player item with ship item
execute on passengers if entity @s[tag=exp.fuel_slot] run item replace entity @p weapon.mainhand from entity @s contents

# replace ship item with stored player item
execute on passengers if entity @s[tag=exp.fuel_slot] run data modify entity @s item set from storage expansion:temp fuel_cell

# update ship value from item
execute store result score @s exp.fuel_level on passengers if entity @s[tag=exp.fuel_slot] run data get entity @s item.components."minecraft:custom_data".fuel.lvl
execute store result score @s exp.fuel_max on passengers if entity @s[tag=exp.fuel_slot] run data get entity @s item.components."minecraft:custom_data".fuel.max
execute store result entity @s data.stats.fuel_max.base int 1 run scoreboard players get @s exp.fuel_max

# reset temporary storage
data remove storage expansion:temp fuel_cell
# reset click detection
execute on passengers if entity @s[type=interaction] run data remove entity @s interaction