# >>> generated function callers >>>
# Callers for expansion:utilities/raycast/placement/cast
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/rightclick/main (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

# get the players block interaction range, scaled to the precision of the raycast
execute store result score #temp exp.max_range run attribute @s block_interaction_range get 20

# run the entity-less raycast
execute anchored eyes positioned ^ ^ ^ run function expansion:utilities/raycast/placement/loop