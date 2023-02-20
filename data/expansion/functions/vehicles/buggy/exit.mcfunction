execute at @e[type=armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] run summon interaction ~ ~ ~ {Tags:["exp.buggy_rcdet","smithed.block"],height:0.5f,response:1b}
ride @e[type=interaction,tag=exp.buggy_rcdet,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest]

execute at @e[type=armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] run stopsound @a player expansion:buggy.engine_driving

scoreboard players reset @e[type=armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] exp.timer_2
scoreboard players reset @e[type=armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] exp.speed
tag @s remove exp.inside_buggy
tag @s remove exp.inside_vehicle
