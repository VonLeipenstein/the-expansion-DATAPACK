# >>> generated function callers >>>
# Callers for expansion:solar_system/generation/place_planet
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:solar_system/generation/attempt_placement (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if score #generate_earth exp.bool matches 1 run return run function expansion:solar_system/generation/place_structure/earth
execute if score #generate_moon exp.bool matches 1 run return run function expansion:solar_system/generation/place_structure/moon
execute if score #generate_mars exp.bool matches 1 run return run function expansion:solar_system/generation/place_structure/mars
execute if score #generate_venus exp.bool matches 1 run return run function expansion:solar_system/generation/place_structure/venus
execute if score #generate_jupiter exp.bool matches 1 run return run function expansion:solar_system/generation/place_structure/jupiter
execute if score #generate_europa exp.bool matches 1 run return run function expansion:solar_system/generation/place_structure/europa