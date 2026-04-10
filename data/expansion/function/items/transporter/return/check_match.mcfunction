# >>> generated function callers >>>
# Callers for expansion:items/transporter/return/check_match
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/transporter/return/portal (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @p[distance=..0.4,tag=!exp.tp_rev_prev] add exp.returning

# check if the unique id of the first return entry is the same as the players unique id, search the correct one if not
# copy the matches array to a storage and loop through it until a match is found
data modify storage expansion:temp returns set from entity @s data.returns
execute store result score #return exp.max_range run data get storage expansion:temp returns
function expansion:items/transporter/return/find_match
data modify entity @s data.returns set from storage expansion:temp returns

tag @p[tag=exp.returning] remove exp.returning