kill @e[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_name":'{color:"dark_gray","translate":"exp_blocks_assembler_gui_name"}'}}},distance=..2]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/assembler

execute on passengers run function animated_java:assembler/remove/this

execute on passengers run kill @s

kill @s
 