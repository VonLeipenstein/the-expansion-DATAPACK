# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/launching/propulsion
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

execute anchored eyes run particle minecraft:campfire_signal_smoke ~ ~-2 ~ .2 .2 .2 0 10 force
execute anchored eyes run particle minecraft:flame ~ ~-2 ~ .2 .2 .2 0.1 50 force
execute anchored eyes run particle minecraft:large_smoke ~ ~-2 ~ .2 .2 .2 0.1 50 force

# slowly increase vertical motion to simulate liftoff
execute unless score @s exp.y matches 200.. run scoreboard players add @s exp.y 1
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s exp.y