execute if predicate expansion:dimension/cold_planet run function expansion:global/temperature_regulation/cold_planet
execute if predicate expansion:dimension/hot_planet run function expansion:global/temperature_regulation/hot_planet
execute if predicate expansion:dimension/low_gravity run function expansion:utilities/gravity/low_gravity/main
execute if predicate expansion:dimension/zero_gravity run function expansion:utilities/gravity/zero_gravity/main
execute if predicate expansion:dimension/storage run function expansion:items/transporter/storage_tick

# detect if the player is close to planets if they're in space
execute if predicate expansion:dimension/space unless entity @s[gamemode=spectator] run function expansion:global/transitions/planet_detection