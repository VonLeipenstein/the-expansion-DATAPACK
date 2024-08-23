# gravity
execute if predicate expansion:dimension/altered_gravity unless entity @s[tag=exp.ignores_gravity_effects] unless entity @s[tag=exp.has_changed_gravity] run function expansion:mechanics/gravity/apply
execute if predicate expansion:dimension/zero_gravity unless entity @s[tag=exp.ignores_gravity_effects] run function expansion:mechanics/gravity/zero/main

# temperature
execute if predicate expansion:dimension/cold_planet run function expansion:mechanics/temperature/cold_planet
execute if predicate expansion:dimension/hot_planet run function expansion:mechanics/temperature/hot_planet

# effects specific for the pocket space dimension
execute if predicate expansion:dimension/storage run function expansion:items/transporter/storage_tick

# oxygen
execute if predicate expansion:dimension/oxygen_absent run function expansion:mechanics/oxygen/main

# detect if the player is close to planets if they're in space
execute if predicate expansion:dimension/space unless entity @s[gamemode=spectator] run function expansion:solar_system/transitions/planet_detection