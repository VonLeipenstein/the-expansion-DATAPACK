execute on vehicle run data modify entity @s HandItems[0] set from entity @s ArmorItems[3].components.minecraft:custom_data.ArmorStorage[0][0]

execute on vehicle run item replace entity @p[tag=exp.exiting_ship] armor.head from entity @s weapon.mainhand

execute on vehicle run item replace entity @s weapon.mainhand with air
execute on vehicle run data remove entity @s ArmorItems[3].components.minecraft:custom_data.ArmorStorage[0][0]
