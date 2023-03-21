execute at @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] run summon minecraft:interaction ~ ~ ~ {Tags:["exp.buggy_rcdet","smithed.block"],height:0.5f,response:1b}
item replace entity @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest] container.0 from entity @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] armor.head
item replace entity @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] armor.head with minecraft:air
ride @e[type=minecraft:interaction,tag=exp.buggy_rcdet,limit=1,sort=nearest] mount @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest]

data modify entity @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest] Rotation[0] set from entity @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] Rotation[0]

execute at @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] run stopsound @a player expansion:buggy.engine_driving

execute at @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] positioned ^1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @s ~ ~ ~

scoreboard players reset @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] exp.timer_2
scoreboard players reset @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] exp.speed
tag @s remove exp.inside_buggy
tag @s remove exp.inside_vehicle
