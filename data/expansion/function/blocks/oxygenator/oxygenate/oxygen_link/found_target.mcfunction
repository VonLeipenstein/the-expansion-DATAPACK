# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/oxygen_link/found_target
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/scan/perform (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

tag @s add exp.found_target

execute unless entity @s[tag=exp.enabled_oxygen] on origin run function expansion:utilities/error_messages/oxygen_detected

execute if score #temp exp.oxygen_max matches 1 run tag @s add exp.enabled_oxygen