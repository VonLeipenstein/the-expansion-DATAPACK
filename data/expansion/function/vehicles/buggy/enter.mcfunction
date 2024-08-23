execute rotated as @s run tp @p[tag=exp.interacting_buggy] ^ ^ ^ ~ ~

ride @p[tag=exp.interacting_buggy] mount @s

execute if predicate expansion:dimension/zero_gravity at @s unless block ~ ~-1 ~ #expansion:air run data merge entity @s {NoGravity:0b}

tag @p[tag=exp.interacting_buggy] add exp.inside_buggy
tag @p[tag=exp.interacting_buggy] add exp.inside_vehicle
tag @s add exp.has_passenger
tag @s remove exp.mod_vehicle