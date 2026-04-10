# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/structure_scan/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/drone_pet/main (1 caller) [OK above +1]
# <<< generated function callers <<<

function expansion:mobs/drone_pet/structure_scan/initiate

execute if entity @s[tag=exp.located_structure] run function expansion:mobs/drone_pet/structure_scan/determine_direction

execute unless entity @s[tag=exp.located_structure] run function expansion:mobs/drone_pet/structure_scan/not_found
