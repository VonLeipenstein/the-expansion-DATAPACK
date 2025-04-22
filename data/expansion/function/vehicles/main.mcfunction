# run the tick functions for each vehicle
execute if predicate expansion:nbt_checks/root_vehicle/spaceship run return run function expansion:vehicles/spaceship/main
execute if predicate expansion:nbt_checks/root_vehicle/buggy run return run function expansion:vehicles/buggy/main
execute if predicate expansion:nbt_checks/root_vehicle/rocket run return run function expansion:vehicles/rocket/main
execute if predicate expansion:nbt_checks/root_vehicle/lunar_module run return run function expansion:vehicles/lunar_module/main
execute if predicate expansion:nbt_checks/root_vehicle/return_capsule run return run function expansion:vehicles/return_capsule/main
execute if predicate expansion:nbt_checks/root_vehicle/mech run return run function expansion:vehicles/mech/main

# if this part of the function still runs, then the player just exited a vehicle
function expansion:vehicles/exit