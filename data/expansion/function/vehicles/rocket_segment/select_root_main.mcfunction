# select the root
execute if predicate expansion:riding/rocket_segment on vehicle on vehicle run return run function expansion:vehicles/rocket_segment/select_root_main

# run the main function
execute at @s run function expansion:vehicles/rocket_segment/inside
