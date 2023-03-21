kill @e[type=item,nbt={Item:{id:"minecraft:end_stone"}},distance=..1,limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",tag:{gui_item:1b}}},distance=..1]
fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:redstone_torch
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_torch"}},limit=1,sort=nearest]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/tesla_coil
stopsound @a[distance=..10] block expansion:teslacoil.charge
kill @s