execute as @e[type=armor_stand,tag=exp.portal_main,limit=1,sort=nearest] at @s run function expansion:contraptions/portal/deactivation/search_match_id
execute as @e[type=armor_stand,tag=exp.port_1,distance=..3,limit=1,sort=nearest] at @s run function expansion:contraptions/portal/assembly/destroy_portal/retrieve_cores
execute as @e[type=armor_stand,tag=exp.port_2,distance=..3,limit=1,sort=nearest] at @s run function expansion:contraptions/portal/assembly/destroy_portal/retrieve_cores
execute as @e[type=armor_stand,tag=exp.port_3,distance=..3,limit=1,sort=nearest] at @s run function expansion:contraptions/portal/assembly/destroy_portal/retrieve_cores
execute as @e[type=armor_stand,tag=exp.port_4,distance=..3,limit=1,sort=nearest] at @s run function expansion:contraptions/portal/assembly/destroy_portal/retrieve_cores
execute as @e[type=armor_stand,tag=exp.port_5,distance=..3,limit=1,sort=nearest] at @s run function expansion:contraptions/portal/assembly/destroy_portal/retrieve_cores

kill @e[type=armor_stand,tag=exp.portal_stand,distance=..3,limit=10,sort=nearest]
execute as @e[type=villager,tag=exp.portal_core_rcdet,distance=..3,limit=5,sort=nearest] run function expansion:utilities/erase_entity
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:air replace minecraft:barrier