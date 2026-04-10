# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/destroy
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

kill @e[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_name":{color:"dark_gray",translate:"exp_blocks_oxygenator_name"}}}},distance=..2]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/oxygenator

execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/oxygenator/oxygenate/scan/fails/main

execute on passengers run kill @s

kill @s
 