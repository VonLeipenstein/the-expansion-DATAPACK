# --- only runs as the spaceship pilot

# save the exit coordinate inside the spaceship nbt
execute on vehicle run function expansion:vehicles/spaceship/transition/store_exit_coord

# initiate the transition
function expansion:vehicles/spaceship/transition/start

# teleport the player to space
execute if predicate expansion:dimension/overworld run function expansion:solar_system/transitions/to_space/earth_to_space
execute if predicate expansion:dimension/moon run function expansion:solar_system/transitions/to_space/moon_to_space
execute if predicate expansion:dimension/mars run function expansion:solar_system/transitions/to_space/mars_to_space
execute if predicate expansion:dimension/venus run function expansion:solar_system/transitions/to_space/venus_to_space
execute if predicate expansion:dimension/asteroids run function expansion:solar_system/transitions/to_space/asteroids_to_space
#execute if predicate expansion:dimension/mercury run function expansion:solar_system/transitions/to_space/mercury_to_space
execute if predicate expansion:dimension/jupiter run function expansion:solar_system/transitions/to_space/jupiter_to_space
execute if predicate expansion:dimension/europa run function expansion:solar_system/transitions/to_space/europa_to_space

function expansion:vehicles/spaceship/transition/remove_temp_tag