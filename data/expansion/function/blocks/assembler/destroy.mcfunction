execute positioned ~-0.5 ~ ~-0.5 run kill @n[type=item,nbt={Item:{id:"minecraft:barrel"}},dx=0]
execute positioned ~-0.5 ~ ~-0.5 run kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{gui_item:1b}}}},dx=0]

execute on passengers run function animated_java:assembler/remove/this

kill @n[type=minecraft:item_display,tag=exp.assembler_product]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/assembler

kill @s
 