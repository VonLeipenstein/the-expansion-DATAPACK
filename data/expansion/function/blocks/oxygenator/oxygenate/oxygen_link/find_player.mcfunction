# stop and ignore invalid entities
execute unless function expansion:blocks/terraformer/valid_entity run return run tag @s add exp.oxygenator.ignore

# hit entities and give them oxygen
execute if entity @s[distance=..1] run return run function expansion:blocks/oxygenator/oxygenate/oxygen_link/hit

# repeat
execute positioned ^ ^ ^1 unless block ~ ~ ~ #expansion:airtight run function expansion:blocks/oxygenator/oxygenate/oxygen_link/find_player