# executed as the pocket space armor stand but at the location of the player

execute at @s as @e[type=minecraft:armor_stand,tag=exp.position_new,limit=1,sort=random] if score @s exp.unique_id = @e[type=minecraft:armor_stand,tag=exp.transporter,limit=1,sort=random] exp.unique_id at @s as @a[distance=..50] run function expansion:items/transporter/return/init

execute at @s run playsound block.metal.break block @a ~ ~ ~
loot spawn ~ ~ ~ loot expansion:tools/pocket_space

execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air

execute at @s run data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{pocket_space:1b}}}}] Item set from entity @s ArmorItems[3]
data merge entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{pocket_space:1b}}}}] {PickupDelay:0s}
kill @n[type=minecraft:interaction,tag=exp.transporter_rcdet,distance=..0.1]
kill @n[type=minecraft:text_display,tag=exp.transporter_text1,distance=..0.1]
kill @n[type=minecraft:text_display,tag=exp.transporter_text2,distance=..0.1]
kill @n[type=minecraft:text_display,tag=exp.transporter_text3,distance=..0.1]
kill @n[type=minecraft:text_display,tag=exp.transporter_text4,distance=..0.1]

kill @s