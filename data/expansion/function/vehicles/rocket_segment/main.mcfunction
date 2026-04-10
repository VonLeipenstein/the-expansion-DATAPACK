# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if predicate expansion:input/jump run scoreboard players set #temp exp.jump 1

execute on vehicle run function expansion:vehicles/rocket_segment/select_root_main

scoreboard players reset #temp exp.jump