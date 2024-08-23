# determine the location of the planet
execute if entity @s[tag=exp.planetarium_mercury] at @s run function expansion:blocks/planetarium/spin/pivots/mercury
execute if entity @s[tag=exp.planetarium_venus] at @s run function expansion:blocks/planetarium/spin/pivots/venus
execute if entity @s[tag=exp.planetarium_earth] at @s run function expansion:blocks/planetarium/spin/pivots/earth
execute if entity @s[tag=exp.planetarium_mars] at @s run function expansion:blocks/planetarium/spin/pivots/mars
execute if entity @s[tag=exp.planetarium_jupiter] at @s run function expansion:blocks/planetarium/spin/pivots/jupiter
execute if entity @s[tag=exp.planetarium_saturn] at @s run function expansion:blocks/planetarium/spin/pivots/saturn
execute if entity @s[tag=exp.planetarium_uranus] at @s run function expansion:blocks/planetarium/spin/pivots/uranus
execute if entity @s[tag=exp.planetarium_neptune] at @s run function expansion:blocks/planetarium/spin/pivots/neptune
execute if entity @s[tag=exp.planetarium_pluto] at @s run function expansion:blocks/planetarium/spin/pivots/pluto
execute if entity @s[tag=exp.planetarium_ceres] at @s run function expansion:blocks/planetarium/spin/pivots/ceres
execute if entity @s[tag=exp.planetarium_amogus] at @s run function expansion:blocks/planetarium/spin/pivots/amogus

execute if entity @s[tag=exp.planetarium_asteroids] at @s run function expansion:blocks/planetarium/spin/pivots/asteroids

execute if entity @s[tag=exp.planetarium_sun] at @s run function expansion:blocks/planetarium/spin/displays/sun

execute as @e[type=item_display,tag=exp.planetarium_comet,predicate=expansion:compare_score/unique_id] run function expansion:blocks/planetarium/spin/comets
