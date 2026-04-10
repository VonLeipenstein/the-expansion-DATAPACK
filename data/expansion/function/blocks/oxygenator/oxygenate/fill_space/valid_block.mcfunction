# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/fill_space/valid_block
# Total callers: 6 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/fill_space/scan_nearby_blocks (6 callers) [OK same-folder]
# <<< generated function callers <<<

# fail if the current block is solid
execute if block ~ ~ ~ #expansion:airtight run return fail

# fail if none of the neighbouring blocks is solid
# The wave only goes over the walls
execute unless predicate expansion:location/oxygenator_valid run return fail

# fail if there already is an oxygen marker at this position
execute if entity @e[type=minecraft:item_display,tag=exp.oxygen_marker,distance=..0.01,limit=1] run return fail

return 1