# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/click_detection/rightclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/spaceship_rc (1 caller)
# <<< generated function callers <<<

# reset advancement trigger
advancement revoke @s only expansion:utility/spaceship_rc

tag @s add exp.clicked

# enter
execute at @s \
        unless predicate expansion:holding/items/fuel_cell \
        unless predicate expansion:utility/sneak \
        unless entity @s[tag=exp.inside_vehicle] \
        as @e[type=minecraft:interaction,tag=exp.spaceship_rcdet,nbt={interaction:{}},limit=1,sort=nearest] \
        on vehicle \
        if entity @s[tag=exp.spaceship,tag=!exp.being_modified] \
        unless score @s exp.passenger_count matches 2.. \
        run function expansion:vehicles/spaceship/enter/passenger

# blasters
execute at @s \
        if predicate expansion:riding/spaceship \
        unless predicate expansion:holding/blocks/planetarium \
        unless predicate expansion:holding/items/fleet_finder \
        on vehicle \
        on vehicle \
        on passengers \
        if data entity @s[type=interaction,tag=exp.spaceship_rcdet] interaction \
        on vehicle \
        unless score @s exp.counter_2 matches 1.. \
        if score @s exp.speed matches 11.. \
        rotated as @s \
        run function expansion:vehicles/spaceship/blasters/choose

# fleet finder
execute at @s \
        if predicate expansion:riding/spaceship \
        if predicate expansion:holding/items/fleet_finder \
        run function expansion:items/fleet_finder/use

# swap fuel cell inside ship
execute if predicate expansion:holding/items/fuel_cell \
        if predicate expansion:riding/spaceship \
        run function expansion:utilities/error_messages/swapcell_inship

# swap fuel cell from outside ship
execute if predicate expansion:holding/items/fuel_cell \
        unless predicate expansion:riding/spaceship \
        at @s \
        as @e[type=minecraft:interaction,tag=exp.spaceship_rcdet,nbt={interaction:{}},limit=1,sort=nearest] \
        on vehicle \
        run function expansion:vehicles/spaceship/fuel/swap_cell

tag @s remove exp.clicked