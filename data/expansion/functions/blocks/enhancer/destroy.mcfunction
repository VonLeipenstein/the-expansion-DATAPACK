kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},limit=1,sort=nearest]
kill @e[type=armor_stand,tag=exp.enhancer_display,limit=1,sort=nearest]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/enhancer
kill @s