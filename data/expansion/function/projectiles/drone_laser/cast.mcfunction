# >>> generated function callers >>>
# Callers for expansion:projectiles/drone_laser/cast
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:mobs/evil_drone/ranged_drone/fire (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

execute unless entity @s[type=#expansion:slowcasters] run return run say Run this function as a slowcaster (masker, item display, snowball, armor stand)

tag @s add exp.slowcast
tag @s add exp.drone_laser
rotate @s ~ ~