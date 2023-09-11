tag @s add exp.takes_core
execute positioned ^ ^ ^2 as @e[type=minecraft:armor_stand,tag=exp.core_port,limit=1,sort=nearest] if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:jigsaw",Count:1b,tag:{portal_core:1b}}]}] run function expansion:blocks/portal/cores/take_core
execute if entity @s[tag=!exp.took_portal_core,predicate=expansion:nbt_checks/selected_item/items/portal_core] positioned ^ ^ ^2 as @e[type=minecraft:armor_stand,tag=exp.core_port,limit=1,sort=nearest] unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:jigsaw",Count:1b,tag:{portal_core:1b}}]}] run function expansion:blocks/portal/cores/insert_core
tag @s remove exp.took_portal_core
tag @s remove exp.takes_core
advancement revoke @s only expansion:utility/portal_core_insert