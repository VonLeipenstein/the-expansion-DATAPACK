ride @e[type=villager,tag=exp.capsule_rcdet,distance=..50,limit=1,sort=nearest] dismount
ride @s mount @e[type=armor_stand,tag=exp.return_capsule,distance=..50,limit=1,sort=nearest]

tag @s add exp.inside_capsule
tag @s add exp.inside_vehicle

execute as @e[type=villager,tag=exp.capsule_rcdet,limit=1,distance=..50,sort=nearest] run function expansion:utilities/erase_entity

advancement revoke @s only expansion:utility/capsule_rc
