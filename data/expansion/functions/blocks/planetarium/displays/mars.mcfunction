tp @s ~ ~ ~

execute at @s run tp @s ~ ~ ~ ~-17.1 ~

execute on passengers if entity @s[tag=exp.planetarium_phobos] at @s run function expansion:blocks/planetarium/pivots/phobos
execute on passengers if entity @s[tag=exp.planetarium_deimos] at @s run function expansion:blocks/planetarium/pivots/deimos