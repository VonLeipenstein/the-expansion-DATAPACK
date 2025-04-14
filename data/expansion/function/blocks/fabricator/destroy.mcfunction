kill @e[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_name":'{color:"dark_gray","translate":"exp_blocks_fabricator_gui_name"}'}}},distance=..2]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/fabricator

execute on passengers if entity @s[tag=aj.fabricator.root] run function animated_java:fabricator/remove/this

execute on passengers run kill @s

kill @s
 