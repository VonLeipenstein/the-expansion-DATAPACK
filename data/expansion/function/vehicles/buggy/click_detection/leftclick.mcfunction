tag @s add exp.hitting_buggy

execute unless predicate expansion:utility/sneak positioned ^ ^ ^2.5 as @e[type=minecraft:interaction,tag=exp.buggy_rcdet,distance=..2.5,limit=1,sort=nearest] on vehicle unless entity @s[tag=exp.has_passenger] run function expansion:vehicles/buggy/demount

advancement revoke @s only expansion:utility/buggy_lc
tag @s remove exp.hitting_buggy
