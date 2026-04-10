# >>> generated function callers >>>
# Callers for expansion:utilities/altitude/loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:utilities/altitude/cast (1 caller) [OK same-folder]
# - function expansion:utilities/altitude/loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# return the accumulated altitude if you hit a block
execute unless block ~ ~ ~ #expansion:air run return run scoreboard players get #altitude exp.distance

# max
execute if score #altitude exp.distance matches 500.. run return run scoreboard players get #altitude exp.distance

# increase the altitude
scoreboard players add #altitude exp.distance 1

# repeat if no block was hit
execute positioned ^ ^ ^1 run return run function expansion:utilities/altitude/loop