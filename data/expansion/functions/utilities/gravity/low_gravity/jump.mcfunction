summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:0b,duration:25,show_particles:False}]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:1b,duration:15,show_particles:False}]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:2b,duration:9,show_particles:False}]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:3b,duration:7,show_particles:False}]}

execute if predicate expansion:dimension/moon run scoreboard players set @s exp.gravity_delay 25
execute if predicate expansion:dimension/mars run scoreboard players set @s exp.gravity_delay 5
execute if predicate expansion:dimension/europa run scoreboard players set @s exp.gravity_delay 20
execute if predicate expansion:dimension/mercury run scoreboard players set @s exp.gravity_delay 12
