# swap the player with the rightclick entity
kill @e[type=minecraft:armor_stand,tag=exp.rocket_seat,limit=1,sort=nearest]
execute at @e[type=minecraft:armor_stand,tag=exp.rocket,limit=1,sort=nearest] run summon minecraft:interaction ~ ~ ~ {Tags:["exp.rocket_rcdet","smithed.block","exp.rocket_interactor"],width:2f,height:6f,response:1b}
ride @e[type=minecraft:interaction,tag=exp.rocket_rcdet,limit=1,sort=nearest] mount @e[type=minecraft:item_display,tag=exp.rocket_display,limit=1,sort=nearest]

# stop the launching sound and reset the timer
scoreboard players reset @e[type=minecraft:armor_stand,tag=exp.rocket,limit=1,sort=nearest] exp.timer_2
stopsound @s player expansion:rocket.launch

# place the player next to the rocket
execute at @e[type=minecraft:armor_stand,tag=exp.rocket,limit=1,sort=nearest] positioned ^ ^ ^2 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @s ~ ~ ~
tag @s remove exp.inside_rocket
tag @s remove exp.inside_vehicle