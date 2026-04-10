# >>> generated function callers >>>
# Callers for expansion:vehicles/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/main (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

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