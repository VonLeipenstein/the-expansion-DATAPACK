tag @s add exp.homing_rocket
tag @s add exp.slowcast

data merge entity @s {item:{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:123494}},transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]}}

execute positioned ^ ^ ^ rotated ~ ~ run tp @s ^ ^ ^ ~ ~

scoreboard players set @s exp.max_range 100

scoreboard players operation @s exp.unique_id = #temp exp.unique_id