# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/click_detection/rightclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/module_rc (1 caller)
# <<< generated function callers <<<

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/module_rc

# stop further running of this function if the player is inside the lunar lander
execute if predicate expansion:riding/lunar_module if entity @s[y_rotation=-45..45] on vehicle on vehicle run return run function expansion:vehicles/lunar_module/launch

execute at @s unless predicate expansion:utility/sneak as @n[type=minecraft:interaction,tag=exp.module_rcdet,nbt={interaction:{}},distance=..10] on vehicle unless score @s exp.passenger_count matches 2.. on passengers if entity @s[type=interaction,tag=exp.module_rcdet] run function expansion:vehicles/lunar_module/enter
