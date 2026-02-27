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
execute if predicate expansion:holding/blocks/launch_pad \
        as @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10] \
        on vehicle \
        if entity @s[tag=exp.rocket_segment,tag=exp.bottom_segment] \
        unless predicate expansion:riding/launch_pad \
        if entity @s[nbt={OnGround:1b}] \
        at @s \
        align xyz positioned ~.5 ~ ~.5 \
        as @p[tag=exp.clicking_player] \
        if function expansion:blocks/place \
        run return \
        run function expansion:utilities/hitbox/reset_click

# ELSE
function expansion:utilities/hitbox/reset_click