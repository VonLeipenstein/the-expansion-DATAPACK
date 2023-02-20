kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},limit=1,sort=nearest]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/compressor
kill @s