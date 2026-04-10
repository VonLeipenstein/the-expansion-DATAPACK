# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/interaction/interact
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/enhancer_lc (1 caller)
# - advancement expansion:utility/enhancer_rc (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/enhancer_rc
advancement revoke @s only expansion:utility/enhancer_lc

tag @s add exp.clicked

execute as @n[type=interaction,tag=exp.enhancer.rcdet,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction run function expansion:blocks/enhancer/interaction/swap_helmet
execute as @n[type=interaction,tag=exp.enhancer.rcdet,nbt={attack:{}},distance=..10] if function expansion:utilities/remove_attack run function expansion:blocks/enhancer/interaction/swap_helmet

tag @s remove exp.clicked