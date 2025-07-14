# add entities in range that were not yet added
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run tag @s add exp.oxygenated
execute as @e[type=#expansion:wants_oxygen,tag=!exp.oxygenator.ignore,tag=!exp.oxygenated,distance=0.5..40,limit=1] run function expansion:blocks/oxygenator/oxygenate/oxygen_link/create
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run tag @s remove exp.oxygenated

# remove links that are out of range
execute on passengers if entity @s[tag=exp.oxygen_link] unless function expansion:blocks/oxygenator/oxygenate/oxygen_link/origin_within_range run kill @s