# >>> generated function callers >>>
# Callers for expansion:blocks/portal/active
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/portal/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# teleport players who are inside the portal
execute positioned ~-.5 ~ ~-.5 as @e[type=#expansion:teleportable,dx=0,dy=0,dz=0,limit=1] positioned ~.5 ~ ~.5 run function expansion:blocks/portal/player_nearby

# occasionally check if the matching portal is still active / if no other portals with the same code were made
function expansion:blocks/portal/activation/periodic_checkup

# particles
execute if predicate expansion:periodic/5 run function expansion:blocks/portal/particles with entity @s item.components."minecraft:custom_data".portal_array[0].Pos