# if the entity already was oxygenated and just got hit again
execute unless entity @s[tag=exp.inside_habitable_space] run function expansion:blocks/oxygenator/oxygenate/titles/oxygenated

# if the entity was not yet oxygenated and got hit
tag @s add exp.inside_habitable_space

# This is immediately re-added from the hit function
tag @s remove exp.oxygenated

# This tag keeps track of who was already connected to an oxygenator
tag @s remove exp.getting_oxygen