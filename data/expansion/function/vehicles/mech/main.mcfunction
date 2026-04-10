# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/main
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:mobs/mech/main (1 caller) [WARN side/down 4]
# - function expansion:vehicles/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# make torso rotate with the pilot
execute anchored eyes rotated as @s on vehicle on vehicle positioned as @s on passengers if entity @s[tag=!aj.mech_legs.root,type=!interaction] positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0

# non-player AI
execute unless entity @s[type=player] run function expansion:mobs/mech/behavior/main

# teleport items to the pilots inventory
execute if entity @s[type=player] if predicate expansion:periodic/10 on vehicle on vehicle at @s on passengers on passengers run tp @e[type=item,distance=..4,limit=5] @s[type=player]

# determine the movement direction based on the inputs
execute if entity @s[type=player] if predicate expansion:input/mech run function expansion:vehicles/mech/input

# runs as the base entity while the player is inside
execute on vehicle on vehicle at @s run function expansion:vehicles/mech/inside

# give a player unlimited oxygen
scoreboard players operation @s exp.oxygen_lvl = @s exp.oxygen_max

# reset the players temperature
scoreboard players set @s exp.temperature 0
# Prevents suit leakage
tag @s add exp.inside_pressurized_space
# Gives this oxygen source priority over the suits tanks
tag @s add exp.connected_to_oxygen