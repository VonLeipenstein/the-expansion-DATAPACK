execute anchored eyes facing entity @e[type=minecraft:armor_stand,tag=exp.being_modified,limit=1,sort=nearest] eyes positioned ^ ^2 ^2 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.4 ~ ~

execute if predicate expansion:chance/020_chance run tp @s ~ ~ ~ ~10 ~

execute if entity @e[type=minecraft:armor_stand,tag=exp.being_modified,distance=..8,limit=1,sort=nearest] run particle firework ~ ~1 ~ 0 0 0 0 1