# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/oxygen_link/find_player
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/oxygen_link/detect_player (1 caller) [OK same-folder]
# - function expansion:blocks/oxygenator/oxygenate/oxygen_link/find_player (1 caller) [OK same-folder]
# <<< generated function callers <<<

# stop and ignore invalid entities
execute unless function expansion:blocks/terraformer/valid_entity run tag @s add exp.oxygenator.ignore

# hit entities and give them oxygen
execute if entity @s[distance=..1] run return 1

# repeat
execute positioned ^ ^ ^0.7 unless block ~ ~ ~ #expansion:airtight run return run function expansion:blocks/oxygenator/oxygenate/oxygen_link/find_player

return fail