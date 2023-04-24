kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",tag:{gui_item:1b}}},distance=..1]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:contraptions/assembler
execute on passengers run function assembler:remove/this
kill @e[type=minecraft:item_display,tag=exp.assembler_product,limit=1,sort=nearest] 
kill @s