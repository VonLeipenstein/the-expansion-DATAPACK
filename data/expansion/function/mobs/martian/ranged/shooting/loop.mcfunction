execute on target if entity @s[distance=..3] run return 1

execute unless block ~ ~ ~ #expansion:air run return fail

execute unless score #temp exp.max_range matches 1.. run return fail

execute positioned ^ ^ ^1 run return run function expansion:mobs/martian/ranged/shooting/loop