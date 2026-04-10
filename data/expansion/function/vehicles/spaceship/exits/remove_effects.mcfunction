# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/exits/remove_effects
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/exits/passenger (1 caller) [OK same-folder]
# <<< generated function callers <<<

# clear all the spaceships effects
effect clear @s minecraft:invisibility
effect clear @s minecraft:weakness
effect clear @s minecraft:slowness
effect clear @s minecraft:resistance

# remove the tags from the player
tag @s remove exp.inside_spaceship
tag @s remove exp.inside_vehicle
tag @s remove exp.spaceship_pilot
tag @s remove exp.exiting_ship