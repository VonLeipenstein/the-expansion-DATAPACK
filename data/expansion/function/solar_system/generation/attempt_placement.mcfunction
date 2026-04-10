# >>> generated function callers >>>
# Callers for expansion:solar_system/generation/attempt_placement
# Total callers: 6 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:solar_system/generation/main (6 callers) [OK same-folder]
# <<< generated function callers <<<

scoreboard players add #generating exp.value 1

# prepare the area for generation
execute if score #generating exp.value matches 20.. run function expansion:solar_system/generation/prepare_area

# check if the area is loaded and place the structure, finishing the process
execute if score #generating exp.value matches 100.. if function expansion:solar_system/generation/check_loaded run function expansion:solar_system/generation/place_planet

# increment the score and detect if the proces takes a while as a failsafe
# if it takes too long, try the init ptocess again
execute if score #generating exp.value matches 400.. run scoreboard players set #generating exp.value 0