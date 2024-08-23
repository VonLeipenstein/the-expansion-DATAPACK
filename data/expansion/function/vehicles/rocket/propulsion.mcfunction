scoreboard players remove @s[scores={exp.fuel_level=1..}] exp.fuel_level 1

effect give @s minecraft:levitation 1 20 true

execute anchored eyes run particle minecraft:campfire_signal_smoke ~ ~-2 ~ 1 1 1 0 10 force
execute anchored eyes run particle minecraft:flame ~ ~-2 ~ .5 .5 .5 0.1 50 force
execute anchored eyes run particle minecraft:large_smoke ~ ~-2 ~ .5 .5 .5 0.1 50 force