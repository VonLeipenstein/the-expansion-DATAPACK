# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/hit/hit
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/electric_arc/inner_loop (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players reset @s exp.max_range

# check if we are allowed to bounce and if a target is available
execute if score #temp exp.bool matches 1 if score @s exp.counter_2 matches 1.. at @s if function expansion:projectiles/electric_arc/bounce/found_target run function expansion:projectiles/electric_arc/bounce/select_target