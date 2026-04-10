# >>> generated function callers >>>
# Callers for expansion:blocks/rocket_parts/rightclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/rocketpart_rc (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/rocketpart_rc

tag @s add exp.clicked
execute if predicate expansion:holding/blocks/rocket_bottom as @n[type=minecraft:interaction,tag=exp.rocketpart_rcdet,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction at @s positioned ~ ~ ~ run function expansion:blocks/rocket_parts/engines/place
execute if predicate expansion:holding/blocks/rocket_cockpit as @n[type=minecraft:interaction,tag=exp.rocketpart_rcdet,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction at @s positioned ~ ~2.5 ~ run function expansion:blocks/rocket_parts/cockpit/place
execute if predicate expansion:holding/blocks/rocket_top as @n[type=minecraft:interaction,tag=exp.rocketpart_rcdet,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction at @s positioned ~ ~2.8 ~ run function expansion:blocks/rocket_parts/top/place
tag @s remove exp.clicked