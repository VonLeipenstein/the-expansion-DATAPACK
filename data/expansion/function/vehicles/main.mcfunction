# run the tick functions for each vehicle
execute if predicate expansion:riding/spaceship run return run function expansion:vehicles/spaceship/main
execute if predicate expansion:riding/buggy run return run function expansion:vehicles/buggy/main
execute if predicate expansion:riding/rocket run return run function expansion:vehicles/rocket/main
execute if predicate expansion:riding/lunar_module run return run function expansion:vehicles/lunar_module/main
execute if predicate expansion:riding/return_capsule run return run function expansion:vehicles/return_capsule/main
execute if predicate expansion:riding/mech run return run function expansion:vehicles/mech/main
execute if predicate expansion:riding/control_segment run return run function expansion:vehicles/rocket_segment/main

# if this part of the function still runs, then the player just exited a vehicle
function expansion:vehicles/exit