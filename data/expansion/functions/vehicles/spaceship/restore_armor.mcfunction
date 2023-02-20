function expansion:utilities/store_armor/summon_armor_storage

data modify entity @e[type=armor_stand,tag=exp.armor_storage,limit=1,sort=nearest] ArmorItems[3] set from entity @s SelectedItem.tag.ArmorStorage.helmet[0]
data modify entity @e[type=armor_stand,tag=exp.armor_storage,limit=1,sort=nearest] ArmorItems[2] set from entity @s SelectedItem.tag.ArmorStorage.chestplate[0]
data modify entity @e[type=armor_stand,tag=exp.armor_storage,limit=1,sort=nearest] ArmorItems[1] set from entity @s SelectedItem.tag.ArmorStorage.leggings[0]
data modify entity @e[type=armor_stand,tag=exp.armor_storage,limit=1,sort=nearest] ArmorItems[0] set from entity @s SelectedItem.tag.ArmorStorage.boots[0]

function expansion:utilities/store_armor/transfer_armor

item modify entity @s weapon.mainhand expansion:store_armor/remove_armor_data

scoreboard players reset @s exp.spaceship_trigger
