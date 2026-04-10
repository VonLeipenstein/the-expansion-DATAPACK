# >>> generated function callers >>>
# Callers for expansion:blocks/terraformer/destroy
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/terraformer/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

kill @e[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_name":{color:"dark_gray",translate:"exp_blocks_terraformer_name"}}}},distance=..2]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/terraformer

execute on passengers run kill @s
kill @s
 