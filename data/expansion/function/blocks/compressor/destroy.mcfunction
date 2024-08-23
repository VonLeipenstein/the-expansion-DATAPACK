execute if entity @s[tag=exp.tank_inside] run function expansion:blocks/compressor/restore_item

kill @n[type=minecraft:item_display,tag=exp.compressor_display]
kill @n[type=minecraft:interaction,tag=exp.compressor_rcdet]
execute as @n[type=item_display,tag=aj.compressor.root,distance=..1] run function animated_java:compressor/remove/this
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/compressor
kill @n[type=item,nbt={Item:{id:"minecraft:cobblestone"}},distance=..1]
kill @s
 