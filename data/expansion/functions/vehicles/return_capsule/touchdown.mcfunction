execute anchored eyes run particle minecraft:campfire_signal_smoke ~ ~ ~ 5 1 5 0.01 2000 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10 0.2 1
execute at @s run tp @s ~ ~-1.5 ~
data merge entity @s {NoGravity:1b}

tag @p remove exp.landing_earth