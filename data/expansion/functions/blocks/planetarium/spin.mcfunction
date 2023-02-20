# determine the location of the planet
execute if entity @s[tag=exp.planetarium_mercury] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=exp.mini_mercury,limit=1,sort=nearest] ^ ^2 ^1
execute if entity @s[tag=exp.planetarium_venus] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=exp.mini_venus,limit=1,sort=nearest] ^ ^2 ^2
execute if entity @s[tag=exp.planetarium_earth] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=exp.mini_earth,limit=1,sort=nearest] ^ ^2 ^3
execute if entity @s[tag=exp.planetarium_mars] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=exp.mini_mars,limit=1,sort=nearest] ^ ^2 ^4
execute if entity @s[tag=exp.planetarium_jupiter] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=exp.mini_jupiter,limit=1,sort=nearest] ^ ^1.2 ^6
execute if entity @s[tag=exp.planetarium_saturn] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=exp.mini_saturn,limit=1,sort=nearest] ^ ^1.2 ^7
execute if entity @s[tag=exp.planetarium_uranus] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=exp.mini_uranus,limit=1,sort=nearest] ^ ^2 ^8
execute if entity @s[tag=exp.planetarium_neptune] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=exp.mini_neptune,limit=1,sort=nearest] ^ ^2 ^9
execute if entity @s[tag=exp.planetarium_pluto] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=exp.mini_pluto,limit=1,sort=nearest] ^ ^2 ^10

# change the orbit of the planet
execute if entity @s[tag=exp.planetarium_mercury] at @s run tp @s ~ ~ ~ ~-0.204 ~
execute if entity @s[tag=exp.planetarium_venus] at @s run tp @s ~ ~ ~ ~-0.0795 ~
execute if entity @s[tag=exp.planetarium_earth] at @s run tp @s ~ ~ ~ ~-0.049 ~
execute if entity @s[tag=exp.planetarium_mars] at @s run tp @s ~ ~ ~ ~-0.026 ~
execute if entity @s[tag=exp.planetarium_jupiter] at @s run tp @s ~ ~ ~ ~-0.004 ~
execute if entity @s[tag=exp.planetarium_saturn] at @s run tp @s ~ ~ ~ ~-0.002 ~
execute if entity @s[tag=exp.planetarium_uranus] at @s run tp @s ~ ~ ~ ~-0.0006 ~
execute if entity @s[tag=exp.planetarium_neptune] at @s run tp @s ~ ~ ~ ~-0.0003 ~
execute if entity @s[tag=exp.planetarium_pluto] at @s run tp @s ~ ~ ~ ~-0.0002 ~
execute if entity @s[tag=exp.planetarium_moon] at @s run tp @s ~ ~ ~ ~-0.662 ~
execute if entity @s[tag=exp.planetarium_asteroids] at @s run tp @s ~ ~ ~ ~-5 ~

#c change the rotation of the planet
execute if entity @s[tag=exp.mini_sun] at @s run tp @s ~ ~ ~ ~-0.6 ~
execute if entity @s[tag=exp.mini_mercury] at @s run tp @s ~ ~ ~ ~-0.4 ~
execute if entity @s[tag=exp.mini_venus] at @s run tp @s ~ ~ ~ ~0.08 ~
execute if entity @s[tag=exp.mini_earth] at @s run tp @s ~ ~ ~ ~-18 ~
execute if entity @s[tag=exp.mini_mars] at @s run tp @s ~ ~ ~ ~-17.1 ~
execute if entity @s[tag=exp.mini_jupiter] at @s run tp @s ~ ~ ~ ~-43.2 ~
execute if entity @s[tag=exp.mini_saturn] at @s run tp @s ~ ~ ~ ~-40.7 ~
execute if entity @s[tag=exp.mini_uranus] at @s run tp @s ~ ~ ~ ~-25.0 ~
execute if entity @s[tag=exp.mini_neptune] at @s run tp @s ~ ~ ~ ~-27.0 ~
execute if entity @s[tag=exp.mini_pluto] at @s run tp @s ~ ~ ~ ~-2.9 ~

# the moon
execute if entity @s[tag=exp.mini_earth] at @s run tp @e[type=armor_stand,tag=exp.planetarium_moon] ~ ~ ~
execute if entity @s[tag=exp.planetarium_moon] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=exp.mini_moon] ^ ^0.5 ^0.3 ~ ~
execute if entity @s[tag=exp.planetarium_moon] at @s run tp @s ~ ~ ~ ~-0.67 ~

# europa
execute if entity @s[tag=exp.mini_jupiter] at @s run tp @e[type=armor_stand,tag=exp.planetarium_europa] ~ ~ ~
execute if entity @s[tag=exp.planetarium_europa] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=exp.mini_europa] ^ ^1.2 ^0.4 ~ ~
execute if entity @s[tag=exp.planetarium_europa] at @s run tp @s ~ ~ ~ ~5.14 ~

# asteroids particles
execute if entity @s[tag=exp.planetarium_asteroids] at @s rotated ~ 0 run particle minecraft:mycelium ^ ^3 ^5 0.1 0.1 0.1 0 10
execute if entity @s[tag=exp.planetarium_asteroids] at @s rotated ~ 0 run particle minecraft:mycelium ^ ^3 ^-5 0.1 0.1 0.1 0 10
execute if entity @s[tag=exp.planetarium_asteroids] at @s rotated ~ 0 run particle minecraft:mycelium ^5 ^3 ^ 0.1 0.1 0.1 0 10
execute if entity @s[tag=exp.planetarium_asteroids] at @s rotated ~ 0 run particle minecraft:mycelium ^-5 ^3 ^ 0.1 0.1 0.1 0 10

# jupiter rings
execute if entity @s[tag=exp.mini_saturn] at @s rotated ~ 0 run particle minecraft:mycelium ^ ^1.75 ^0.7 0.1 0 0.1 0 5

# stars
execute if entity @s[tag=exp.planetarium] run particle minecraft:end_rod ^ ^1.75 ^ 7 7 7 0 2
