kill @e[type=minecraft:interaction,tag=exp.capsule_rcdet,distance=..10,limit=1,sort=nearest]
ride @s mount @e[type=minecraft:armor_stand,tag=exp.return_capsule,distance=..50,limit=1,sort=nearest]

tag @s add exp.inside_capsule
tag @s add exp.inside_vehicle
