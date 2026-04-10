# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/oxygen_link/check
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/success (1 caller) [OK above +1]
# <<< generated function callers <<<

# Cut the oxygen supply if the link entities didn't find their target
execute if entity @s[tag=!exp.found_target] run return run tag @s remove exp.enabled_oxygen

# enable the oxygen supply to entities that did reach their target
tag @s add exp.enabled_oxygen
tag @s remove exp.found_target