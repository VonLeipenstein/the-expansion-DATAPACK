# >>> generated function callers >>>
# Callers for expansion:blocks/portal/activation/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/portal/cores/add_core_count (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

scoreboard players add @s exp.timer_2 1

# Create a unique ID for every portal which increments every time a new portal is activated. exp.counter_1 is the ID scoreboard for the portals.
function expansion:blocks/portal/activation/assign_id

# create the portal array and 'upload' it to the global portal array
function expansion:blocks/portal/activation/create_array