# >>> generated function callers >>>
# Callers for expansion:solar_system/generation/place_structure/europa
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:solar_system/generation/place_planet (1 caller) [OK above +1]
# <<< generated function callers <<<

# place structure
place structure expansion:planets/europa ~ ~ ~

# reset score
scoreboard players reset #generate_europa exp.bool

# remove forceload
function expansion:solar_system/generation/clean_area

# after the entire sequence, lock the solar system generation on future reloads and notify the players
function expansion:solar_system/generation/finish