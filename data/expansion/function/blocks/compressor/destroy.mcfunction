# >>> generated function callers >>>
# Callers for expansion:blocks/compressor/destroy
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/compressor/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

kill @e[type=item,nbt={Age:0s},distance=..2]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/compressor

execute if entity @s[tag=exp.tank_inside] run function expansion:blocks/compressor/restore_item

execute on passengers if entity @s[tag=aj.compressor.root] run function animated_java:compressor/remove/this

execute on passengers run kill @s 

kill @s