# revoke the rightclick advancement
advancement revoke @s only expansion:utility/capsule_rc

# stop this interaction if the player is inside the capsule
execute if predicate expansion:riding/return_capsule run return fail

# enter the capsule
execute unless predicate expansion:utility/sneak unless predicate expansion:holding/items/wrench run function expansion:vehicles/return_capsule/enter

# error if the player is not holding a wrench
execute unless predicate expansion:holding/items/wrench run function expansion:utilities/error_messages/recycle_with_wrench

# recycle the capsule
execute if predicate expansion:holding/items/wrench positioned ^ ^-1 ^2 as @e[type=armor_stand,tag=exp.return_capsule,distance=..10,limit=1,sort=nearest] at @s run function expansion:vehicles/return_capsule/recycle

