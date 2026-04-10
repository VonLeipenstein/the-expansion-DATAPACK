# >>> generated function callers >>>
# Callers for expansion:blocks/terraformer/oxygen_link/cube
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/terraformer/cube_mode (1 caller) [OK above +1]
# <<< generated function callers <<<

# add entities in range that were not yet connected
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run tag @s add exp.oxygenated
execute at @s positioned ~-24 ~-24 ~-24 as @e[type=#expansion:wants_oxygen,tag=!exp.terraformer.ignore,tag=!exp.oxygenated,tag=!exp.inside_vehicle,dx=47,dy=47,dz=47,limit=1] positioned ~24 ~24 ~24 run function expansion:blocks/terraformer/oxygen_link/init
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run tag @s remove exp.oxygenated

# remove links that are out of range
execute on passengers if entity @s[tag=exp.oxygen_link] unless function expansion:blocks/terraformer/oxygen_link/check_near_cube run kill @s
execute on passengers if entity @s[tag=exp.oxygen_link] if function expansion:blocks/terraformer/oxygen_link/check_inside_vehicle run kill @s