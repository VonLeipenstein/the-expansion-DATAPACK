# copy the data from the player to the storage
execute unless data entity @p[tag=exp.clicked_ship] Inventory[{Slot:103b}].id run data modify entity @s ArmorItems[3].components.minecraft:custom_data.ArmorStorage[] append value {id:"minecraft:air",count:1}

execute if data entity @p[tag=exp.clicked_ship] Inventory[{Slot:103b}].id run data modify entity @s ArmorItems[3].components.minecraft:custom_data.ArmorStorage[] append from entity @p[tag=exp.clicked_ship] Inventory[{Slot:103b}]

# remove the helmet from the player
item replace entity @p[tag=exp.clicked_ship] armor.head with air