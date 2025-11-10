scoreboard players set #temp exp.max_range 100
execute at @s positioned ^ ^ ^1 run return run function expansion:mobs/martian/ranged/shooting/loop
scoreboard players reset #temp exp.max_range