# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/click_detection/leftclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/rocketsegment_lc (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/rocketsegment_lc

# Context Tagging
tag @s add exp.clicking_player
execute as @n[type=minecraft:interaction,tag=exp.rocketsegment_rcdet,nbt={attack:{}},distance=..10] if function expansion:utilities/remove_attack run tag @s add exp.clicked_entity

# IF
execute as @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10] \
        on vehicle \
        if function expansion:vehicles/rocket_segment/recursive_destroy \
        run return \
        run function expansion:utilities/hitbox/reset_click

# ELSE
function expansion:utilities/hitbox/reset_click