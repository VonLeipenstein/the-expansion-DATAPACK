scoreboard players reset @e[type=armor_stand,tag=exp.lunar_module,limit=1,sort=nearest] exp.timer_2

# swap the player with the rightclick villager
kill @e[type=armor_stand,tag=exp.module_seat,limit=1,sort=nearest]
execute at @e[type=armor_stand,tag=exp.lunar_module,limit=1,sort=nearest] run summon villager ~ ~ ~ {Silent:1b,Age:-1000000000,Invulnerable:1b,NoAI:1b,NoGravity:1b,Tags:["exp.module_rcdet","smithed.block","exp.lunar_villager"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:99999999,ShowParticles:0b},{Id:11,Amplifier:5b,Duration:99999999,ShowParticles:0b}]}
ride @e[type=villager,tag=exp.module_rcdet,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.lunar_module,limit=1,sort=nearest]

execute at @e[type=armor_stand,tag=exp.lunar_module,limit=1,sort=nearest] positioned ^ ^ ^3 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @s ~ ~ ~

tag @s remove exp.inside_module
tag @s remove exp.inside_vehicle
