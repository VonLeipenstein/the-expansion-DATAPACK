# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/oxygen_link/finish
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/oxygen_link/create (1 caller) [OK same-folder]
# <<< generated function callers <<<

# link other entities
ride @s mount @e[type=item_display,tag=exp.oxygenator,distance=..0.01,limit=1]

tag @s add exp.oxygen_link

function expansion:utilities/snowball_link/link_from_storage