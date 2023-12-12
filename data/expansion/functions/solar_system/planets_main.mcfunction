# gravity
execute if predicate expansion:dimension/low_gravity run function expansion:mechanics/gravity/low_gravity/main
execute if predicate expansion:dimension/zero_gravity run function expansion:mechanics/gravity/zero_gravity/main

# temperature
execute if predicate expansion:dimension/cold_planet run function expansion:mechanics/temperature/cold_planet
execute if predicate expansion:dimension/hot_planet run function expansion:mechanics/temperature/hot_planet

# effects specific for the pocket space dimension
execute if predicate expansion:dimension/storage run function expansion:items/transporter/storage_tick

# oxygen
execute if predicate expansion:dimension/oxygen_absent if entity @s[gamemode=!creative,gamemode=!spectator,tag=!exp.has_oxygen,tag=!exp.generator,tag=!exp.inside_vehicle] run function expansion:mechanics/oxygen/main

# detect if the player is close to planets if they're in space
execute if predicate expansion:dimension/space unless entity @s[gamemode=spectator] run function expansion:solar_system/transitions/planet_detection