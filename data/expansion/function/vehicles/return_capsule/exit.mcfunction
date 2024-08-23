execute at @e[type=minecraft:armor_stand,tag=exp.return_capsule,limit=1,sort=nearest] run summon minecraft:interaction ~ ~ ~ {Silent:1b,Tags:["exp.capsule_rcdet","smithed.block"],width:2f,height:2f,response:1b}
ride @e[type=minecraft:interaction,tag=exp.capsule_rcdet,limit=1,sort=nearest] mount @e[type=minecraft:armor_stand,tag=exp.return_capsule,limit=1,sort=nearest]

execute at @e[type=minecraft:armor_stand,tag=exp.return_capsule,limit=1,sort=nearest] positioned ^ ^1.62 ^1.5 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @s ~ ~ ~

tag @s remove exp.inside_capsule
tag @s remove exp.inside_vehicle