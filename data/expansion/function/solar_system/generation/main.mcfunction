# >>> generated function callers >>>
# Callers for expansion:solar_system/generation/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:tick (1 caller) [OK above +2]
# <<< generated function callers <<<

# generate the planets depending on the exp.bool score
# the returns make sure only one planet is generated at a time 
# while allowing for multiple generations to be prompted simultaneously

# add a cooldown to dissipate the load a bit
execute if score #generation exp.cooldown matches 1.. run scoreboard players remove #generation exp.cooldown 1
execute if score #generation exp.cooldown matches 1.. run return fail

# generate each planet (center points of planets will be somewhere else because the structures seem to generate in chunk borders)
execute if score #generate_earth exp.bool matches 1 positioned 0 128 0 run return run function expansion:solar_system/generation/attempt_placement
execute if score #generate_moon exp.bool matches 1 positioned -608 128 112 run return run function expansion:solar_system/generation/attempt_placement
execute if score #generate_mars exp.bool matches 1 positioned -1872 128 -1328 run return run function expansion:solar_system/generation/attempt_placement
execute if score #generate_venus exp.bool matches 1 positioned 1344 128 1728 run return run function expansion:solar_system/generation/attempt_placement
execute if score #generate_jupiter exp.bool matches 1 positioned -2864 128 1536 run return run function expansion:solar_system/generation/attempt_placement
execute if score #generate_europa exp.bool matches 1 positioned -3552 128 1632 run return run function expansion:solar_system/generation/attempt_placement