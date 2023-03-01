# merge the mod array with the spaceship
data modify entity @s item.tag.ModStorage merge from entity @e[type=armor_stand,tag=exp.modstation,limit=1,sort=nearest] ArmorItems[3].tag.ModStorage

# apply the spaceship cmd to both the spaceship and the display item
data modify entity @s item.tag.CustomModelData set from entity @s item.tag.ModStorage.skin.tag.CustomModelData
data modify entity @e[type=item_display,tag=exp.modstation_display,limit=1,sort=nearest] item.tag.CustomModelData set from entity @s item.tag.ModStorage.skin.tag.CustomModelData

# remove the data of the temporary data storage
data remove entity @e[type=armor_stand,tag=exp.modstation,tag=exp.done_modifying,limit=1,sort=nearest] ArmorItems[3].tag.ModStorage
