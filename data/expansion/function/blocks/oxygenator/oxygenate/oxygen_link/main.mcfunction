# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/oxygen_link/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/scan/main (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# add entities in range that were not yet added
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run tag @s add exp.oxygenated
execute as @e[type=#expansion:wants_oxygen,tag=!exp.oxygenator.ignore,tag=!exp.oxygenated,distance=0.5..40,limit=1] run function expansion:blocks/oxygenator/oxygenate/oxygen_link/create
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run tag @s remove exp.oxygenated

# remove links that are out of range
execute on passengers if entity @s[tag=exp.oxygen_link] unless function expansion:blocks/oxygenator/oxygenate/oxygen_link/origin_within_range run kill @s