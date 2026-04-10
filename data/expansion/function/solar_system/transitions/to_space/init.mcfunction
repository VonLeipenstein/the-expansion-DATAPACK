# >>> generated function callers >>>
# Callers for expansion:solar_system/transitions/to_space/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/spaceship/inside (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

# --- only runs as the spaceship
function expansion:vehicles/spaceship/markers/activate_markers

# teleport the player to space
execute if predicate expansion:dimension/overworld positioned 0 128 0 run function expansion:solar_system/transitions/to_space/from_planet
execute if predicate expansion:dimension/moon positioned -608 128 112 run function expansion:solar_system/transitions/to_space/from_planet
execute if predicate expansion:dimension/mars positioned -1872 128 -1328 run function expansion:solar_system/transitions/to_space/from_planet
execute if predicate expansion:dimension/venus positioned 1344 128 1728 run function expansion:solar_system/transitions/to_space/from_planet
execute if predicate expansion:dimension/asteroids run function expansion:solar_system/transitions/to_space/from_asteroids
execute if predicate expansion:dimension/jupiter positioned -2864 128 1536 run function expansion:solar_system/transitions/to_space/from_planet
execute if predicate expansion:dimension/europa positioned -3552 128 1632 run function expansion:solar_system/transitions/to_space/from_planet