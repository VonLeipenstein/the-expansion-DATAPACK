# kill any planetarium markers that may be present
execute if entity @s[tag=exp.markertag1] run function expansion:vehicles/spaceship/markers/kill_markers

# clear all the spaceships effects
effect clear @s minecraft:invisibility
effect clear @s minecraft:weakness
effect clear @s minecraft:slowness
effect clear @s minecraft:resistance

# remove the tags from the player
tag @s remove exp.inside_spaceship
tag @s remove exp.inside_vehicle
tag @s remove exp.spaceship_pilot