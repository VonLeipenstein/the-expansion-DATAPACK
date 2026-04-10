# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/select_root_main
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:vehicles/rocket_segment/main (1 caller) [OK same-folder]
# - function expansion:vehicles/rocket_segment/select_root_main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# select the root
execute if predicate expansion:riding/rocket_segment on vehicle on vehicle run return run function expansion:vehicles/rocket_segment/select_root_main

# run the main function
execute at @s run function expansion:vehicles/rocket_segment/inside
