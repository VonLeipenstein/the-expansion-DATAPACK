# Cut the oxygen supply if the link entities didn't find their target
execute if entity @s[tag=!exp.found_target] run return run tag @s remove exp.enabled_oxygen

# enable the oxygen supply to entities that did reach their target
tag @s add exp.enabled_oxygen
tag @s remove exp.found_target