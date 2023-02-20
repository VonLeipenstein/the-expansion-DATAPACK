summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,Amplifier:0b,Duration:25,ShowParticles:False}]}
summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,Amplifier:1b,Duration:15,ShowParticles:False}]}
summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,Amplifier:2b,Duration:9,ShowParticles:False}]}
summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,Amplifier:3b,Duration:7,ShowParticles:False}]}

execute if predicate expansion:dimension/moon run scoreboard players set @s exp.gravity_delay 25
execute if predicate expansion:dimension/mars run scoreboard players set @s exp.gravity_delay 5
execute if predicate expansion:dimension/europa run scoreboard players set @s exp.gravity_delay 20
execute if predicate expansion:dimension/mercury run scoreboard players set @s exp.gravity_delay 12
