execute at @e[type=armor_stand,tag=exp.return_capsule,limit=1,sort=nearest] run summon interaction ~ ~ ~ {Tags:["exp.capsule_rcdet","smithed.block"],width:2f,height:2f,response:1b}
ride @e[type=interaction,tag=exp.capsule_rcdet,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.return_capsule,limit=1,sort=nearest]

tag @s remove exp.inside_capsule
tag @s remove exp.inside_vehicle