function expansion:contraptions/portal/deactivation/search_match_id
execute as @e[type=minecraft:armor_stand,tag=exp.port_1,distance=..3,limit=1,sort=nearest] at @s run function expansion:contraptions/portal/assembly/destroy_portal/retrieve_cores
execute as @e[type=minecraft:armor_stand,tag=exp.port_2,distance=..3,limit=1,sort=nearest] at @s run function expansion:contraptions/portal/assembly/destroy_portal/retrieve_cores
execute as @e[type=minecraft:armor_stand,tag=exp.port_3,distance=..3,limit=1,sort=nearest] at @s run function expansion:contraptions/portal/assembly/destroy_portal/retrieve_cores
execute as @e[type=minecraft:armor_stand,tag=exp.port_4,distance=..3,limit=1,sort=nearest] at @s run function expansion:contraptions/portal/assembly/destroy_portal/retrieve_cores
execute as @e[type=minecraft:armor_stand,tag=exp.port_5,distance=..3,limit=1,sort=nearest] at @s run function expansion:contraptions/portal/assembly/destroy_portal/retrieve_cores

loot give @p loot expansion:contraptions/portal

kill @e[type=minecraft:interaction,tag=exp.portal_rcdet,limit=1,sort=nearest]

kill @e[type=minecraft:armor_stand,tag=exp.portal_stand,limit=6,sort=nearest]
kill @e[type=minecraft:interaction,tag=exp.portal_core_rcdet,limit=5,sort=nearest]
kill @e[type=minecraft:item_display,tag=exp.portal_display,limit=1,sort=nearest]

fill ^-1 ^-1 ^ ^1 ^-1 ^ minecraft:air replace minecraft:barrier