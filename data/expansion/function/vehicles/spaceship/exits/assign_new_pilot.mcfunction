# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/exits/assign_new_pilot
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/exits/passenger (1 caller) [OK same-folder]
# <<< generated function callers <<<

effect clear @s[tag=!exp.spaceship_pilot,tag=exp.inside_spaceship,tag=!exp.exiting_ship] invisibility
tag @s[tag=!exp.spaceship_pilot,tag=exp.inside_spaceship,tag=!exp.exiting_ship] add exp.spaceship_pilot