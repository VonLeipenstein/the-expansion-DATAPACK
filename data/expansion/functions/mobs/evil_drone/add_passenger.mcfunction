data merge entity @s {NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty",AbsorptionAmount:20f,Health:20f,Tags:["exp.evil_drone_hitbox"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20}]}
ride @s mount @e[type=armor_stand,tag=exp.evil_drone,limit=1,sort=nearest]
execute on vehicle run tag @s remove exp.new_drone