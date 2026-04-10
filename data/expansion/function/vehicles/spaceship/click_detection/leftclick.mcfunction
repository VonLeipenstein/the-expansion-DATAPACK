# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/click_detection/leftclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/spaceship_lc (1 caller)
# <<< generated function callers <<<

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/spaceship_lc

tag @s add exp.clicked

# toggle the planet markers
execute at @s \
        if predicate expansion:riding/spaceship \
        if entity @s[tag=exp.spaceship_pilot] \
        on vehicle \
        on vehicle \
        run function expansion:vehicles/spaceship/markers/marker_switcher

# Demount the ship in creative mode
execute if entity @s[gamemode=creative] \
        unless predicate expansion:holding/items/wrench \
        positioned ^ ^ ^2.5 \
        as @e[type=minecraft:interaction,tag=exp.spaceship_rcdet,distance=..2.5,limit=1,sort=nearest] \
        on vehicle \
        on passengers \
        if entity @s[tag=exp.spaceship_seat] \
        unless predicate expansion:passengers/player \
        on vehicle \
        run function expansion:vehicles/spaceship/demount

# Dismantle the ship
execute positioned ^ ^ ^2.5 \
        as @e[type=minecraft:interaction,tag=exp.spaceship_rcdet,distance=..2.5,limit=1,sort=nearest] \
        on vehicle \
        on passengers \
        if entity @s[tag=exp.spaceship_seat] \
        unless predicate expansion:passengers/player \
        on vehicle \
        run function expansion:vehicles/spaceship/dismantle

tag @s remove exp.clicked