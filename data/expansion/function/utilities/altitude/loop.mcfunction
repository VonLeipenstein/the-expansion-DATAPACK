# return the accumulated altitude if you hit a block
execute unless block ~ ~ ~ #expansion:air run return run scoreboard players get #altitude exp.distance

# max
execute if score #altitude exp.distance matches 500.. run return run scoreboard players get #altitude exp.distance

# increase the altitude
scoreboard players add #altitude exp.distance 1

# repeat if no block was hit
execute positioned ^ ^ ^1 run return run function expansion:utilities/altitude/loop