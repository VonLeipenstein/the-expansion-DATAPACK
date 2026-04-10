# >>> generated function callers >>>
# Callers for expansion:blocks/portal/cores/interact
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/portal_core_insert (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/portal_core_insert

# remember if a player is holding a core
scoreboard players reset #temp exp.counter_1
execute if predicate expansion:holding/items/portal_core store result score #temp exp.counter_1 run data get entity @s SelectedItem.components."minecraft:custom_data".core_id

# swap the core
execute as @n[type=interaction,tag=exp.portal_core_rcdet,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction run function expansion:blocks/portal/cores/swap_core