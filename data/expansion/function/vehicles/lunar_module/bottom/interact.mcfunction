# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/bottom/interact
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/modulebottom_lc (1 caller)
# - advancement expansion:utility/modulebottom_rc (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/modulebottom_rc
advancement revoke @s only expansion:utility/modulebottom_lc

execute if predicate expansion:holding/items/wrench positioned ^ ^ ^2 as @e[type=minecraft:armor_stand,tag=exp.module_bottom,distance=..3,limit=1,sort=nearest] run function expansion:vehicles/lunar_module/recycle

execute unless predicate expansion:holding/items/wrench run function expansion:utilities/error_messages/recycle_with_wrench