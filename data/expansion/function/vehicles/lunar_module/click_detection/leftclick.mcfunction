# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/click_detection/leftclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/module_lc (1 caller)
# <<< generated function callers <<<

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/module_lc

# stop further running of this function if the player is inside the lunar lander
execute if predicate expansion:riding/lunar_module run return fail

# destroy the lunar module, only works in creative
execute if entity @s[gamemode=creative] unless predicate expansion:holding/items/wrench as @n[type=minecraft:interaction,tag=exp.module_rcdet,nbt={attack:{}},distance=..10] run function expansion:vehicles/lunar_module/demount

# attempt to dismantle the lunar module (you cant)
execute as @n[type=minecraft:interaction,tag=exp.module_rcdet,nbt={attack:{}},distance=..10] run function expansion:vehicles/lunar_module/dismantle
