execute unless predicate expansion:utility/sneak run function expansion:vehicles/return_capsule/enter
execute if predicate expansion:utility/sneak if predicate expansion:nbt_checks/selected_item/items/wrench positioned ^ ^-1 ^2 as @e[type=armor_stand,tag=exp.return_capsule,limit=1,sort=nearest] at @s run function expansion:vehicles/return_capsule/recycle


# revoke the rightclick advancement
advancement revoke @s only expansion:utility/capsule_rc