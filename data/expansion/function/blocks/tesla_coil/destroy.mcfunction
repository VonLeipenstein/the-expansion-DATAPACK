# >>> generated function callers >>>
# Callers for expansion:blocks/tesla_coil/destroy
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/tesla_coil/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

kill @e[type=item,nbt={Age:0s},distance=..2]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/tesla_coil

stopsound @a[distance=..16] block expansion:teslacoil.charge

fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:redstone_torch

kill @n[type=item,nbt={Item:{id:"minecraft:redstone_torch"}}]

execute on passengers run kill @s

kill @s
 