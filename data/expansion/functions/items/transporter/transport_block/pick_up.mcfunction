execute at @s as @e[type=minecraft:armor_stand,tag=exp.position_new,limit=1,sort=random] if score @s exp.unique_id = @e[type=minecraft:armor_stand,tag=exp.transporter,limit=1,sort=random] exp.unique_id at @s as @a[distance=..50] run function expansion:items/transporter/initiate_return

execute at @s run playsound block.metal.break block @a ~ ~ ~
loot spawn ~ ~ ~ loot expansion:tools/pocket_space

execute at @s run data modify entity @e[type=item,nbt={Item:{tag:{pocket_space:1b}}},limit=1,sort=nearest] Item set from entity @s ArmorItems[3]
data merge entity @e[type=item,nbt={Item:{tag:{pocket_space:1b}}},limit=1,sort=nearest] {PickupDelay:0s}
kill @e[type=minecraft:interaction,tag=exp.transporter_rcdet,limit=1,sort=nearest]
kill @s