# >>> generated function callers >>>
# Callers for expansion:blocks/rocket_parts/init_pickup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/rocketpart_lc (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/rocketpart_lc

tag @s add exp.clicked
execute as @n[type=minecraft:interaction,tag=exp.rocketpart_rcdet,nbt={attack:{}},distance=..10] if function expansion:utilities/remove_attack on vehicle run function expansion:blocks/rocket_parts/destroy
tag @s remove exp.clicked