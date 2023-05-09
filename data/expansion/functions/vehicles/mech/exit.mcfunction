execute at @e[type=minecraft:armor_stand,tag=exp.mech,limit=1,sort=nearest] run summon minecraft:interaction ~ ~ ~ {Silent:1b,Tags:["exp.mech_rcdet","smithed.block"],width:2,height:2f,response:1b}

ride @e[type=minecraft:interaction,tag=exp.mech_rcdet,limit=1,sort=nearest] mount @e[type=minecraft:armor_stand,tag=exp.mech_seat,limit=1,sort=nearest]

execute at @e[type=minecraft:armor_stand,tag=exp.mech,limit=1,sort=nearest] positioned ^1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @s ~ ~ ~

scoreboard players reset @e[type=minecraft:armor_stand,tag=exp.mech,limit=1,sort=nearest] exp.timer_2
scoreboard players reset @e[type=minecraft:armor_stand,tag=exp.mech,limit=1,sort=nearest] exp.speed
tag @s remove exp.inside_mech
tag @s remove exp.inside_vehicle
