# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/bend/check
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/electric_arc/inner_loop (1 caller) [OK above +1]
# <<< generated function callers <<<

# branch if unique_id is 1
execute unless score @s exp.counter_1 matches ..0 if predicate expansion:chance/005_chance run function expansion:projectiles/electric_arc/branch

# bend
function expansion:projectiles/electric_arc/bend/bend