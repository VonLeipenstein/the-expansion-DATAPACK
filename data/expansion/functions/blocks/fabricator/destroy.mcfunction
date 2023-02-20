kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/fabricator
kill @e[type=armor_stand,tag=exp.hand_item,limit=1,sort=nearest] 
kill @e[type=armor_stand,tag=exp.head_item,limit=1,sort=nearest] 
kill @s