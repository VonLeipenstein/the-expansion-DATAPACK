# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/structure_scan/determine_direction
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/drone_pet/structure_scan/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# north
execute if score @s exp.x matches -3..3 if score @s exp.z matches 6..10 positioned ~ ~ ~-1 run return run function expansion:mobs/drone_pet/movement/home_to_structure
# northeast
execute if score @s exp.x matches -10..-4 if score @s exp.z matches 4..10 positioned ~1 ~ ~-1 run return run function expansion:mobs/drone_pet/movement/home_to_structure
# east
execute if score @s exp.x matches -10..-6 if score @s exp.z matches -3..3 positioned ~1 ~ ~ run return run function expansion:mobs/drone_pet/movement/home_to_structure
# southeast
execute if score @s exp.x matches -10..-4 if score @s exp.z matches -10..-4 positioned ~1 ~ ~1 run return run function expansion:mobs/drone_pet/movement/home_to_structure
# south
execute if score @s exp.x matches -3..3 if score @s exp.z matches -10..-6 positioned ~ ~ ~1 run return run function expansion:mobs/drone_pet/movement/home_to_structure
# southwest
execute if score @s exp.x matches 4..10 if score @s exp.z matches -10..-4 positioned ~-1 ~ ~1 run return run function expansion:mobs/drone_pet/movement/home_to_structure
# west
execute if score @s exp.x matches 6..10 if score @s exp.z matches -3..3 positioned ~-1 ~ ~ run return run function expansion:mobs/drone_pet/movement/home_to_structure
# northwest
execute if score @s exp.x matches 4..10 if score @s exp.z matches 4..10 positioned ~-1 ~ ~-1 run return run function expansion:mobs/drone_pet/movement/home_to_structure