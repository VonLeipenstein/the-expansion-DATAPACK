kill @e[type=minecraft:interaction,tag=exp.buggy_rcdet,limit=1,sort=nearest]
item replace entity @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] armor.head from entity @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest] container.0
item replace entity @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest] container.0 with minecraft:air
ride @s mount @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest]

tag @s add exp.inside_buggy
tag @s add exp.inside_vehicle

advancement revoke @s only expansion:utility/buggy_rc