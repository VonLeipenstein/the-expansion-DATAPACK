# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/branch
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:projectiles/electric_arc/bend/check (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

# consume a branch charge
scoreboard players remove @s exp.counter_1 1

# copy other parameters of the current branch
function expansion:projectiles/electric_arc/copy_parameters

# restrict the number of times that the child branch can branch to 1
scoreboard players set #temp exp.counter_1 1

# restrict the size of new branches
scoreboard players operation #temp exp.max_range /= #temp exp.size_mod
execute if score #temp exp.max_range > #temp exp.size run scoreboard players operation #temp exp.max_range = #temp exp.size

# cast
execute at @s summon marker run function expansion:projectiles/electric_arc/cast