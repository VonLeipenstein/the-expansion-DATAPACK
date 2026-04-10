# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/click_detection/rightclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/buggy_rc (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/buggy_rc

tag @s add exp.interacting_buggy

# Enter the buggy
execute unless predicate expansion:utility/sneak \
        unless predicate expansion:holding/items/oxygen_tank \
        as @n[type=minecraft:interaction,tag=exp.buggy_rcdet,nbt={interaction:{}}] \
        if function expansion:utilities/remove_interaction \
        on vehicle \
        unless predicate expansion:passengers/player \
        run function expansion:vehicles/buggy/enter

# Refill the buggies oxygen tank
execute at @s unless predicate expansion:utility/sneak \
        if predicate expansion:holding/items/oxygen_tank \
        as @n[type=minecraft:interaction,tag=exp.buggy_rcdet,nbt={interaction:{}}] \
        if function expansion:utilities/remove_interaction \
        on vehicle \
        if score @s exp.oxygen_lvl matches 1.. \
        run function expansion:mechanics/oxygen/fill_tank_from_buggy

tag @s remove exp.interacting_buggy