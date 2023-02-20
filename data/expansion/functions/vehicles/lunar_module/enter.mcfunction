tag @s add exp.inside_module
tag @s add exp.inside_vehicle
#tag @s remove exp.inside_rocket

# swap the rightclick villager with the module_seat armor stand and mount the player on top of that
ride @e[type=villager,tag=exp.module_rcdet,distance=..50,limit=1,sort=nearest] dismount
execute at @e[type=armor_stand,tag=exp.lunar_module,distance=..50,limit=1,sort=nearest] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["exp.module_seat"]}
ride @e[type=armor_stand,tag=exp.module_seat,distance=..50,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.lunar_module,limit=1,sort=nearest]
ride @s mount @e[type=armor_stand,tag=exp.module_seat,distance=..50,limit=1,sort=nearest]

# delete the villager
execute as @e[type=villager,tag=exp.module_rcdet,distance=..50,limit=1,sort=nearest] run function expansion:utilities/erase_entity

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/module_rc