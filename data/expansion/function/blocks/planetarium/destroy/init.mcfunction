# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/destroy/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/planetarium/main (1 caller) [OK above +1]
# <<< generated function callers <<<

kill @e[type=item,nbt={Age:0s},distance=..2]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/planetarium

function expansion:blocks/planetarium/destroy/chain