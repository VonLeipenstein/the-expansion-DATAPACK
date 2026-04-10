# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/click_detection/leftclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/rocket_lc (1 caller)
# <<< generated function callers <<<

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/rocket_lc

tag @s add exp.clicked

# stop further running of this function if the player is inside the lunar lander
execute if predicate expansion:riding/rocket run return run tag @s remove exp.clicked

# destroy the rocket, only possible in creative
execute if entity @s[gamemode=creative] \
        unless predicate expansion:holding/items/wrench \
        as @n[type=minecraft:interaction,tag=exp.rocket_rcdet,nbt={attack:{}}] if function expansion:utilities/remove_attack \
        on vehicle \
        run function expansion:vehicles/rocket/demount

# dismantle the rocket
execute as @n[type=minecraft:interaction,tag=exp.rocket_rcdet,nbt={attack:{}}] if function expansion:utilities/remove_attack \
        on vehicle \
        run function expansion:vehicles/rocket/dismantle

tag @s remove exp.clicked
