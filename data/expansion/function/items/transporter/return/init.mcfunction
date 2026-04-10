# >>> generated function callers >>>
# Callers for expansion:items/transporter/return/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/transporter/return/find_match (1 caller) [OK same-folder]
# <<< generated function callers <<<

# fill in the data
execute store result score #temp exp.x run data get storage expansion:temp returns[0].position.x
execute store result score #temp exp.y run data get storage expansion:temp returns[0].position.y
execute store result score #temp exp.z run data get storage expansion:temp returns[0].position.z
execute store result score #temp exp.dim_test run data get storage expansion:temp returns[0].dimension

# return the player
execute at @s summon minecraft:marker at @s run function expansion:items/transporter/return/finish

# remove the return entry
data remove storage expansion:temp returns[0]