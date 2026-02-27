advancement revoke @s only expansion:utility/rocketsegment_lc

# Context Tagging
tag @s add exp.clicking_player
execute as @n[type=minecraft:interaction,tag=exp.rocketsegment_rcdet,nbt={attack:{}},distance=..10] if function expansion:utilities/remove_attack run tag @s add exp.clicked_entity

# IF
execute as @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10] \
        on vehicle \
        if function expansion:vehicles/rocket_segment/on_launchpad \
        if function expansion:vehicles/rocket_segment/destroy \
        run return \
        run function expansion:utilities/hitbox/reset_click

# ELSE
function expansion:utilities/hitbox/reset_click