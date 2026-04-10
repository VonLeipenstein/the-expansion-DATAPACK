# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/bounce/found_target
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:projectiles/electric_arc/hit/hit (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# check if a valid target exists and lock it for the select_target function
execute as @e[type=!#expansion:ignore,distance=..12,predicate=!expansion:compare_score/arc_id,limit=1,sort=random] run return run function expansion:utilities/raycast/target/lock_dummy

return fail