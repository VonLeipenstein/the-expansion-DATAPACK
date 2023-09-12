# copy the data from the player to the storage
data modify entity @s item.tag.ArmorStorage[] append from entity @p[tag=exp.clicked_ship] Inventory[{Slot:103b}]

# remove the helmet from the player
item replace entity @p[tag=exp.clicked_ship] armor.head with air