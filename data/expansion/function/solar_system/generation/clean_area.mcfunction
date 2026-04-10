# >>> generated function callers >>>
# Callers for expansion:solar_system/generation/clean_area
# Total callers: 6 from 6 source(s)
# Folder rule (function callers): 0/6 honored
# Sources:
# - function expansion:solar_system/generation/place_structure/earth (1 caller) [WARN side/down 1]
# - function expansion:solar_system/generation/place_structure/europa (1 caller) [WARN side/down 1]
# - function expansion:solar_system/generation/place_structure/jupiter (1 caller) [WARN side/down 1]
# - function expansion:solar_system/generation/place_structure/mars (1 caller) [WARN side/down 1]
# - function expansion:solar_system/generation/place_structure/moon (1 caller) [WARN side/down 1]
# - function expansion:solar_system/generation/place_structure/venus (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

forceload remove ~-80 ~-80 ~80 ~80

# add a cooldown before the next planet begins
scoreboard players add #generation exp.cooldown 20

scoreboard players reset #generating exp.value