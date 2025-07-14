# stop and ignore invalid entities
execute unless function expansion:blocks/terraformer/valid_entity run tag @s add exp.oxygenator.ignore

# hit entities and give them oxygen
execute if entity @s[distance=..1] run return 1

# repeat
execute positioned ^ ^ ^0.7 unless block ~ ~ ~ #expansion:airtight run return run function expansion:blocks/oxygenator/oxygenate/oxygen_link/find_player

return fail