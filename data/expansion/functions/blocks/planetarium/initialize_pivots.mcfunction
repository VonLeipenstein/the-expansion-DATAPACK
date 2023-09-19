execute if entity @s[type=minecraft:marker,tag=exp.planetarium_mercury] at @s run tp @s ~ ~ ~ ~40 ~
execute if entity @s[type=minecraft:marker,tag=exp.planetarium_venus] at @s run tp @s ~ ~ ~ ~160 ~
execute if entity @s[type=minecraft:marker,tag=exp.planetarium_earth] at @s run tp @s ~ ~ ~ ~360 ~
execute if entity @s[type=minecraft:marker,tag=exp.planetarium_mars] at @s run tp @s ~ ~ ~ ~240 ~
execute if entity @s[type=minecraft:marker,tag=exp.planetarium_jupiter] at @s run tp @s ~ ~ ~ ~30 ~
execute if entity @s[type=minecraft:marker,tag=exp.planetarium_saturn] at @s run tp @s ~ ~ ~ ~200 ~
execute if entity @s[type=minecraft:marker,tag=exp.planetarium_uranus] at @s run tp @s ~ ~ ~ ~120 ~
execute if entity @s[type=minecraft:marker,tag=exp.planetarium_neptune] at @s run tp @s ~ ~ ~ ~280 ~
execute if entity @s[type=minecraft:marker,tag=exp.planetarium_pluto] at @s run tp @s ~ ~ ~ ~80 ~
execute if entity @s[type=minecraft:marker,tag=exp.planetarium_moon] at @s run tp @s ~ ~ ~ ~360 ~
execute if entity @s[type=minecraft:marker,tag=exp.planetarium_europa] at @s run tp @s ~ ~ ~ ~360 ~
execute if entity @s[type=minecraft:marker,tag=exp.planetarium_asteroids] at @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[type=minecraft:marker,tag=exp.planetarium_ceres] at @s run tp @s ~ ~ ~ ~60 ~


scoreboard players operation @s exp.unique_id = #planetarium_id exp.unique_id
