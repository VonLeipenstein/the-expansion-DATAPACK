kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/fabricator
kill @e[type=minecraft:item_display,tag=exp.fabricator_display,limit=1,sort=nearest]
kill @s