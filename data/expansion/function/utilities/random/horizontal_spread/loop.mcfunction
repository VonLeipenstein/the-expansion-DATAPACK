execute if score #temp exp.math matches 1.. positioned as @s run tp @s ^ ^ ^.1
execute if score #temp exp.math matches ..-1 positioned as @s run tp @s ^ ^ ^-.1

execute if score #temp exp.math matches 1.. run scoreboard players remove #temp exp.math 1
execute if score #temp exp.math matches ..-1 run scoreboard players add #temp exp.math 1

execute unless score #temp exp.math matches 0 run function expansion:utilities/random/horizontal_spread/loop