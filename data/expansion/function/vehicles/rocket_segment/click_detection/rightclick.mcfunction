# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/click_detection/rightclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/rocketsegment_rc (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/rocketsegment_rc

# Context Tagging
tag @s add exp.clicking_player
execute as @n[type=minecraft:interaction,tag=exp.rocketsegment_rcdet,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction run tag @s add exp.clicked_entity

# IF
execute if predicate expansion:holding/items/rocket_segment/body \
        as @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10] \
        on vehicle \
        at @s \
        unless entity @s[tag=exp.top_segment,tag=exp.launch_pad] \
        unless predicate expansion:passengers/rocket_segment \
        if function expansion:vehicles/rocket_segment/place/init \
        run return \
        run function expansion:utilities/hitbox/reset_click

# ELSE IF
execute if predicate expansion:holding/items/rocket_segment/top \
        as @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10] \
        on vehicle \
        at @s \
        unless entity @s[tag=exp.rocket_segment,tag=exp.top_segment] \
        unless predicate expansion:passengers/rocket_segment \
        if function expansion:vehicles/rocket_segment/place/init \
        run return \
        run function expansion:utilities/hitbox/reset_click

# ELSE IF
execute as @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10] \
        on vehicle \
        at @s \
        if entity @s[tag=exp.rocket_segment,tag=exp.control_segment] \
        unless predicate expansion:passengers/player \
        if function expansion:vehicles/rocket_segment/control/enter \
        run return \
        run function expansion:utilities/hitbox/reset_click

# ELSE IF
execute if predicate expansion:holding/items/rocket_propellant \
        as @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10] \
        on vehicle \
        at @s \
        if function expansion:vehicles/rocket_segment/checks/has_fuel_capacity \
        if function expansion:vehicles/rocket_segment/fuel/fuel \
        run return \
        run function expansion:utilities/hitbox/reset_click

# # ELSE IF
# execute if predicate expansion:holding/blocks/launch_pad \
#         as @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10] \
#         on vehicle \
#         if entity @s[tag=exp.rocket_segment,tag=exp.bottom_segment] \
#         unless predicate expansion:riding/launch_pad \
#         if entity @s[nbt={OnGround:1b}] \
#         at @s \
#         align xyz positioned ~.5 ~ ~.5 \
#         as @p[tag=exp.clicking_player] \
#         if function expansion:blocks/place \
#         run return \
#         run function expansion:utilities/hitbox/reset_click

# ELSE
function expansion:utilities/hitbox/reset_click