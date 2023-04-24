kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",tag:{gui_item:1b}}},distance=..1]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/fabricator
kill @e[type=minecraft:item_display,tag=exp.fabricator_display,limit=1,sort=nearest]

execute on passengers run function fabricator:remove/this
kill @s