execute as @e[type=minecraft:armor_stand,tag=exp.portal_main,limit=1,sort=nearest] at @s run function expansion:blocks/portal/assembly/destroy_portal/destroy_portal

advancement revoke @s only expansion:utility/portal_lc