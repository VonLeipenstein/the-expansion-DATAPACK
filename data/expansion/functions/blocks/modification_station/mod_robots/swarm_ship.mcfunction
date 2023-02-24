execute at @s anchored eyes facing entity @e[type=armor_stand,tag=exp.being_modified,limit=1,sort=nearest] eyes positioned ^ ^2 ^2 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.4 ~ ~

execute at @s if predicate expansion:chance/020_chance run tp @s ~ ~ ~ ~10 ~

execute at @s run particle firework ~ ~ ~ 0 0 0 0 1
execute at @s run particle wax_off ~ ~ ~ 0 0 0 0 1

