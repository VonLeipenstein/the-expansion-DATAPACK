scoreboard players reset @e[type=minecraft:armor_stand,tag=exp.lunar_module,limit=1,sort=nearest] exp.timer_2

# swap the player with the rightclick villager
kill @e[type=minecraft:armor_stand,tag=exp.module_seat,limit=1,sort=nearest]
execute at @e[type=minecraft:armor_stand,tag=exp.lunar_module,limit=1,sort=nearest] run summon minecraft:interaction ~ ~ ~ {Tags:["exp.module_rcdet","exp.module_interactor","smithed.block"],width:3f,height:4f,response:1b}
ride @e[type=minecraft:interaction,tag=exp.module_rcdet,limit=1,sort=nearest] mount @e[type=minecraft:item_display,tag=exp.module_display,limit=1,sort=nearest]

execute at @e[type=minecraft:armor_stand,tag=exp.lunar_module,limit=1,sort=nearest] positioned ^ ^ ^3 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @s ~ ~ ~

tag @s remove exp.inside_module
tag @s remove exp.inside_vehicle
