execute unless predicate expansion:utility/sneak unless predicate expansion:nbt_checks/selected_item/items/wrench run function expansion:vehicles/return_capsule/enter

execute unless predicate expansion:nbt_checks/selected_item/items/wrench run function expansion:utilities/error_messages/recycle_with_wrench

execute if predicate expansion:nbt_checks/selected_item/items/wrench positioned ^ ^-1 ^2 as @e[type=armor_stand,tag=exp.return_capsule,limit=1,sort=nearest] at @s run function expansion:vehicles/return_capsule/recycle


# revoke the rightclick advancement
advancement revoke @s only expansion:utility/capsule_rc