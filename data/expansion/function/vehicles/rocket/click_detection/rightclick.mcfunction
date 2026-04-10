# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/click_detection/rightclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/rocket_rc (1 caller)
# <<< generated function callers <<<

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/rocket_rc

# enter a rocket seat according to some conditions
tag @s add exp.clicked

execute at @s[tag=!exp.inside_vehicle] \
        unless predicate expansion:utility/sneak \
        as @n[type=minecraft:interaction,tag=exp.rocket_rcdet,nbt={interaction:{}}] \
        run function expansion:vehicles/rocket/enter/init

tag @s remove exp.clicked