# >>> generated function callers >>>
# Callers for expansion:player/rightclick/placement
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:utilities/raycast/placement/loop (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

# get the desired alignment of the to-be-placed entity
function expansion:blocks/determine_rotation

# place blocks
execute if predicate expansion:holding/block run return run function expansion:blocks/place

# place vehicles
execute if predicate expansion:holding/vehicle run return run function expansion:vehicles/place