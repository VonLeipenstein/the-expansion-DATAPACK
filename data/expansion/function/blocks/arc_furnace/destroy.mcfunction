execute positioned ~-0.5 ~ ~-0.5 run kill @n[type=item,nbt={Item:{id:"minecraft:dropper"}},dx=0]
execute positioned ~-0.5 ~ ~-0.5 run kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{gui_item:1b}}}},dx=0]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/arc_furnace

kill @s