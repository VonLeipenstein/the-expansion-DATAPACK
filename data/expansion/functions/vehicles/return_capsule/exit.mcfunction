execute at @e[type=armor_stand,tag=exp.return_capsule,limit=1,sort=nearest] run summon villager ~ ~ ~ {Silent:1b,Age:-1000000000,Invulnerable:1b,NoAI:1b,NoGravity:1b,Tags:["exp.capsule_rcdet","smithed.block"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:99999999,ShowParticles:0b},{Id:11,Amplifier:5b,Duration:99999999,ShowParticles:0b}]}
ride @e[type=villager,tag=exp.capsule_rcdet,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.return_capsule,limit=1,sort=nearest]

tag @s remove exp.inside_capsule
tag @s remove exp.inside_vehicle