data merge entity @s {item_display:"head",width:3,height:3,transformation:{translation:[0.0f,2.0f,0.0f],scale:[0.25f,0.25f,0.25f]}}

loot replace block ~ ~ ~ container.0 loot expansion:items/gui/assembler

data modify entity @s Rotation[0] set from entity @e[type=minecraft:item_display,tag=aj.assembler.root,limit=1,sort=nearest] Rotation[0]

tag @s add exp.assembler_product