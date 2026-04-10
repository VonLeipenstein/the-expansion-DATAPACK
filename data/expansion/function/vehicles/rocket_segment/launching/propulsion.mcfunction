# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/launching/propulsion
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players remove @s[scores={exp.fuel_level=1..}] exp.fuel_level 1

effect give @s minecraft:levitation 1 20 true

execute anchored eyes run particle minecraft:campfire_signal_smoke ~ ~-2 ~ 1 1 1 0 10 force
execute anchored eyes run particle minecraft:flame ~ ~-2 ~ .5 .5 .5 0.1 50 force
execute anchored eyes run particle minecraft:large_smoke ~ ~-2 ~ .5 .5 .5 0.1 50 force

# transport to the moon when reaching y=500
execute if predicate expansion:location/space_edge run function expansion:vehicles/rocket_segment/launching/transport