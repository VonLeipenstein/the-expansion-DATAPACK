item replace entity @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest] container.0 from entity @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] armor.head
item replace entity @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] armor.head with minecraft:air

data modify entity @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest] Rotation[0] set from entity @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] Rotation[0]

execute at @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] run stopsound @a player expansion:buggy.engine_driving

execute at @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] positioned ^1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @s ~ ~ ~

execute if predicate expansion:dimension/zero_gravity run data merge entity @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] {NoGravity:1b}

scoreboard players reset @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] exp.timer_2
scoreboard players reset @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] exp.speed
tag @s remove exp.inside_buggy
tag @s remove exp.inside_vehicle
