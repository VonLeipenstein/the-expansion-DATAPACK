kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",tag:{gui_item:1b}}},distance=..1]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/compressor
kill @s