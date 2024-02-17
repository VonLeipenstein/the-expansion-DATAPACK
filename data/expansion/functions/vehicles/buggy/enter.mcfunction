item replace entity @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] armor.head from entity @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest] container.0
item replace entity @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest] container.0 with minecraft:air
ride @s mount @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest]
execute if predicate expansion:dimension/zero_gravity as @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] at @s unless block ~ ~-1 ~ #expansion:air run data merge entity @s {NoGravity:0b}

tag @s add exp.inside_buggy
tag @s add exp.inside_vehicle