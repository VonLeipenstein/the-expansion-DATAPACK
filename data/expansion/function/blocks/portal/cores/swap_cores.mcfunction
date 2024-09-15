advancement revoke @s only expansion:utility/portal_core_insert
say portals don't work in this version, they will be fixed in a later update

tag @s add exp.takes_core
execute positioned ^ ^ ^2 as @n[type=minecraft:armor_stand,tag=exp.core_port] if data entity @s ArmorItems[3].components.minecraft:custom_data.portal_core run function expansion:blocks/portal/cores/take_core
execute if entity @s[tag=!exp.took_portal_core,predicate=expansion:nbt_checks/selected_item/items/portal_core] positioned ^ ^ ^2 as @n[type=minecraft:armor_stand,tag=exp.core_port] unless data entity @s ArmorItems[3].components.minecraft:custom_data.portal_core run function expansion:blocks/portal/cores/insert_core
tag @s remove exp.took_portal_core
tag @s remove exp.takes_core