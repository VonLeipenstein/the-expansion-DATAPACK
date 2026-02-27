advancement revoke @s only expansion:utility/launch_pad_lc

# Context Tagging
tag @s add exp.clicking_player
execute as @n[type=minecraft:interaction,tag=exp.launch_pad_hitbox,nbt={attack:{}},distance=..10] if function expansion:utilities/remove_attack run tag @s add exp.clicked_entity

# IF rocket is home or no rocket is assigned, destroy pad
execute as @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10] \
        on vehicle \
        unless function expansion:blocks/launch_pad/occupied \
        run function expansion:blocks/launch_pad/destroy

# IF holding a rocket part
execute as @n[type=minecraft:interaction,tag=exp.clicked_entity,tag=exp.destination_left,distance=..10] \
        on passengers if entity @s[type=snowball] on origin \
        if function expansion:blocks/launch_pad/interaction/button_left \
        run return \
        run function expansion:utilities/hitbox/reset_click

# IF holding a rocket part
execute as @n[type=minecraft:interaction,tag=exp.clicked_entity,tag=exp.destination_right,distance=..10] \
        on passengers if entity @s[type=snowball] on origin \
        if function expansion:blocks/launch_pad/interaction/button_right \
        run return \
        run function expansion:utilities/hitbox/reset_click

# ELSE
function expansion:utilities/hitbox/reset_click