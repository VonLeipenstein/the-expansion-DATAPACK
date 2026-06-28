# >>> generated function callers >>>
# Callers for expansion:blocks/launch_control/interaction/leftclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/launch_control_lc (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/launch_control_lc

# Context Tagging
tag @s add exp.clicking_player
execute as @n[type=minecraft:interaction,tag=exp.launch_control_hitbox,nbt={attack:{}},distance=..10] if function expansion:utilities/remove_attack run tag @s add exp.clicked_entity

# IF pressing left button
execute as @n[type=minecraft:interaction,tag=exp.clicked_entity,tag=exp.destination_left,distance=..10] \
        on passengers if entity @s[type=snowball] on origin \
        if function expansion:blocks/launch_control/interaction/button_left \
        run return \
        run function expansion:utilities/hitbox/reset_click

# IF pressing right button
execute as @n[type=minecraft:interaction,tag=exp.clicked_entity,tag=exp.destination_right,distance=..10] \
        on passengers if entity @s[type=snowball] on origin \
        if function expansion:blocks/launch_control/interaction/button_right \
        run return \
        run function expansion:utilities/hitbox/reset_click

# IF rocket is home or no rocket is assigned, destroy pad
execute as @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10] \
        on vehicle \
        run function expansion:blocks/launch_control/destroy

# ELSE
function expansion:utilities/hitbox/reset_click