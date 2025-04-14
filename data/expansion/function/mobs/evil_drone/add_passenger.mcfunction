data merge entity @s {NoAI:1b,Silent:1b,DeathLootTable:"expansion:empty",AbsorptionAmount:20f,equipment:{},Health:20f,Tags:["exp.evil_drone_hitbox"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],attributes:[{id:max_health,base:20}]}

ride @s mount @e[type=armor_stand,tag=exp.evil_drone,distance=..10,limit=1,sort=nearest]

execute on vehicle run tag @s remove exp.new_drone