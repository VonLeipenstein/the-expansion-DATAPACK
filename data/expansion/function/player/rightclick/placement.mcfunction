# get the desired alignment of the to-be-placed entity
function expansion:blocks/determine_rotation

# place blocks
execute if predicate expansion:holding/block run return run function expansion:blocks/place

# place vehicles
execute if predicate expansion:holding/vehicle run return run function expansion:vehicles/place