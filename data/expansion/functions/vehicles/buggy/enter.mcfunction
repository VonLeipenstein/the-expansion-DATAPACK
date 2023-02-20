kill @e[type=minecraft:interaction,tag=exp.buggy_rcdet,limit=1,sort=nearest]
ride @s mount @e[type=armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest]
tag @s add exp.inside_buggy
tag @s add exp.inside_vehicle

advancement revoke @s only expansion:utility/buggy_rc