execute on passengers if entity @s[tag=exp.fuel_slot] run function expansion:vehicles/spaceship/fuel/update_cell
execute on passengers if entity @s[tag=exp.segment_display] run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 0
execute on passengers if entity @s[tag=exp.fuel_slot] run loot spawn ~ ~ ~ loot expansion:slot/contents
execute on passengers if entity @s[tag=exp.fuel_slot] run kill @s
