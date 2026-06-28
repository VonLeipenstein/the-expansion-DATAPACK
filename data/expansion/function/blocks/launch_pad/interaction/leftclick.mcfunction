# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/interaction/leftclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/launch_pad_lc (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/launch_pad_lc

# Context Tagging
tag @s add exp.clicking_player
execute as @n[type=minecraft:interaction,tag=exp.launch_pad_hitbox,nbt={attack:{}},distance=..10] if function expansion:utilities/remove_attack run tag @s add exp.clicked_entity

# IF rocket is home or no rocket is assigned, destroy pad
execute as @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10] \
        on vehicle \
        unless function expansion:blocks/launch_pad/occupied \
        run function expansion:blocks/launch_pad/destroy

# ELSE
function expansion:utilities/hitbox/reset_click