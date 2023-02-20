item replace entity @p weapon.mainhand from entity @s armor.head
item replace entity @s armor.head with minecraft:air
tag @p add exp.took_portal_core

execute as @e[type=armor_stand,tag=exp.portal_main,limit=1,sort=nearest] run function expansion:contraptions/portal/cores/remove_core_count