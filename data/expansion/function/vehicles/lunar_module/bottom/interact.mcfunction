advancement revoke @s only expansion:utility/modulebottom_rc
advancement revoke @s only expansion:utility/modulebottom_lc

execute if predicate expansion:nbt_checks/selected_item/items/wrench positioned ^ ^ ^2 as @e[type=minecraft:armor_stand,tag=exp.module_bottom,distance=..3,limit=1,sort=nearest] run function expansion:vehicles/lunar_module/recycle

execute unless predicate expansion:nbt_checks/selected_item/items/wrench run function expansion:utilities/error_messages/recycle_with_wrench