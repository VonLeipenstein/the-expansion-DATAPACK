# >>> generated function callers >>>
# Callers for expansion:items/transporter/return/find_match
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:items/transporter/return/check_match (1 caller) [OK same-folder]
# - function expansion:items/transporter/return/find_match (1 caller) [OK same-folder]
# <<< generated function callers <<<

# repeat this until a match is found, teleport the match
execute store result score #temp exp.unique_id run data get storage expansion:temp returns[0].id
execute if score #temp exp.unique_id = @p[tag=exp.returning] exp.unique_id run return run function expansion:items/transporter/return/init

# move the first element of the array to the back
data modify storage expansion:temp returns append from storage expansion:temp returns[0]
data remove storage expansion:temp returns[0]

scoreboard players remove #return exp.max_range 1
execute if score #return exp.max_range matches 1.. run function expansion:items/transporter/return/find_match