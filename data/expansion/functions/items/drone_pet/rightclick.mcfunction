execute if predicate expansion:utility/sneak if predicate expansion:nbt_checks/selected_item/items/wrench run function expansion:items/drone_pet/dismiss

execute unless predicate expansion:utility/sneak run tag @e[type=minecraft:armor_stand,tag=!exp.searching_structure,tag=exp.pet_drone,limit=1,sort=nearest] add exp.searching_structure

advancement revoke @s only expansion:utility/drone_pet_rc