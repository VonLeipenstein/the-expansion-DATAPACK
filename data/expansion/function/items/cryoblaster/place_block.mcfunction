execute anchored feet rotated ~ 0 positioned ^ ^ ^2 if block ~ ~ ~ #expansion:air run particle minecraft:poof ~ ~0.5 ~ .5 .5 .5 0 100
execute anchored feet rotated ~ 0 positioned ^ ^ ^2 if block ~ ~ ~ #expansion:air run scoreboard players remove @s exp.ammo 1
execute anchored feet rotated ~ 0 positioned ^ ^ ^2 if block ~ ~ ~ #expansion:air run setblock ~ ~ ~ minecraft:packed_ice
playsound block.lava.extinguish master @a ~ ~ ~ 1 2
tag @s add exp.used_ammo

