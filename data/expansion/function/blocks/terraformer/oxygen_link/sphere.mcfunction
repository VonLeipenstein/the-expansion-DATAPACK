# add entities in range that were not yet connected
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run tag @s add exp.oxygenated
execute at @s as @e[type=#expansion:wants_oxygen,tag=!exp.terraformer.ignore,tag=!exp.oxygenated,tag=!exp.inside_vehicle,distance=0.5..39,limit=1] run function expansion:blocks/terraformer/oxygen_link/init
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run tag @s remove exp.oxygenated

# remove links that are out of range
execute on passengers if entity @s[tag=exp.oxygen_link] unless function expansion:blocks/terraformer/oxygen_link/check_near run kill @s
execute on passengers if entity @s[tag=exp.oxygen_link] if function expansion:blocks/terraformer/oxygen_link/check_inside_vehicle run kill @s