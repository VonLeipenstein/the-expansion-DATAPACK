tp @s ~ ~ ~

execute at @s run tp @s ~ ~ ~ ~-43.2 ~

execute on passengers if entity @s[tag=exp.planetarium_europa] at @s run function expansion:blocks/planetarium/pivots/europa
execute on passengers if entity @s[tag=exp.planetarium_io] at @s run function expansion:blocks/planetarium/pivots/io
execute on passengers if entity @s[tag=exp.planetarium_callisto] at @s run function expansion:blocks/planetarium/pivots/callisto
execute on passengers if entity @s[tag=exp.planetarium_ganymede] at @s run function expansion:blocks/planetarium/pivots/ganymede