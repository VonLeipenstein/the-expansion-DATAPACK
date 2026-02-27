advancement revoke @s only expansion:utility/buggy_lc

tag @s add exp.clicked

# Demount the buggy, only possible in creative
execute if entity @s[gamemode=creative] \
        positioned ^ ^ ^2.5 \
        as @n[type=minecraft:interaction,tag=exp.buggy_rcdet,nbt={attack:{}}] \
        if function expansion:utilities/remove_attack \
        on vehicle \
        unless predicate expansion:passengers/player \
        run function expansion:vehicles/buggy/demount

# Dismantle the buggy
execute as @n[type=minecraft:interaction,tag=exp.buggy_rcdet,nbt={attack:{}}] \
        if function expansion:utilities/remove_attack \
        on vehicle \
        run function expansion:vehicles/buggy/dismantle

tag @s remove exp.clicked
