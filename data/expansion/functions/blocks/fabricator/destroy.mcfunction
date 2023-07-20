kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",tag:{gui_item:1b}}},distance=..1]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/fabricator
execute at @e[type=marker,tag=exp.block_fix,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~ ~ air replace barrel
kill @e[type=marker,tag=exp.block_fix,limit=1,sort=nearest]

execute on passengers run function animated_java:fabricator/remove/this
kill @s