kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{gui_item:1b}}}},distance=..1]
execute at @e[type=minecraft:item_display,tag=exp.enhancer_display,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~ ~ air replace dropper
execute on passengers run kill @s
execute as @e[type=item_display,tag=aj.enhancer.root,distance=..1,limit=1,sort=nearest] run function animated_java:enhancer/remove/this
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/enhancer
kill @e[type=minecraft:interaction,tag=exp.enhancer_rcdet,limit=1,sort=nearest]
kill @s
 