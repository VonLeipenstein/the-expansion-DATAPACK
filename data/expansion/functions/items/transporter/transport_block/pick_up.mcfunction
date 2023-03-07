execute as @e[type=armor_stand,tag=exp.position_new,limit=1,sort=random] if score @s exp.unique_id = @e[type=armor_stand,tag=exp.transporter,limit=1,sort=random] exp.unique_id at @s as @a[distance=..50] run function expansion:items/transporter/initiate_return

loot spawn ~ ~ ~ loot expansion:tools/pocket_space
data modify entity @e[type=item,nbt={Item:{tag:{pocket_space:1b}}},limit=1,sort=nearest] Item set from entity @s ArmorItems[3]
execute as @e[type=villager,tag=exp.transporter_rcdet,limit=1,sort=nearest] run function expansion:utilities/erase_entity
kill @s