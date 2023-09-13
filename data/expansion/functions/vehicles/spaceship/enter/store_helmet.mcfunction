# copy the data from the player to the storage
execute unless data entity @p[tag=exp.clicked_ship] Inventory[{Slot:103b}].id run data modify entity @s ArmorItems[3].tag.ArmorStorage[] append value {id:"minecraft:air",Count:1b}

execute if data entity @p[tag=exp.clicked_ship] Inventory[{Slot:103b}].id run data modify entity @s ArmorItems[3].tag.ArmorStorage[] append from entity @p[tag=exp.clicked_ship] Inventory[{Slot:103b}]

# remove the helmet from the player
item replace entity @p[tag=exp.clicked_ship] armor.head with air