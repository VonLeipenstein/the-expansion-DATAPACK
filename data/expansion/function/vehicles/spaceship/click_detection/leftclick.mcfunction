# revoke the rightclick advancement
advancement revoke @s only expansion:utility/spaceship_lc

tag @s add exp.clicked_ship

# toggle the planet markers
execute at @s if predicate expansion:nbt_checks/root_vehicle/spaceship if entity @s[tag=exp.spaceship_pilot] on vehicle on vehicle run function expansion:vehicles/spaceship/markers/marker_switcher

# prevent further function when inside ship
execute if predicate expansion:nbt_checks/root_vehicle/spaceship run return run tag @s remove exp.clicked_ship

# Demount the ship in creative mode
execute if entity @s[gamemode=creative] unless predicate expansion:nbt_checks/selected_item/items/wrench positioned ^ ^ ^2.5 \
        as @e[type=minecraft:interaction,tag=exp.spaceship_rcdet,distance=..2.5,limit=1,sort=nearest] on vehicle on passengers \
        if entity @s[tag=exp.spaceship_seat] unless predicate expansion:passengers/player on vehicle run function expansion:vehicles/spaceship/demount

# Dismantle the ship
execute positioned ^ ^ ^2.5 as @e[type=minecraft:interaction,tag=exp.spaceship_rcdet,distance=..2.5,limit=1,sort=nearest] on vehicle on passengers \
        if entity @s[tag=exp.spaceship_seat] unless predicate expansion:passengers/player on vehicle run function expansion:vehicles/spaceship/dismantle

tag @s remove exp.clicked_ship