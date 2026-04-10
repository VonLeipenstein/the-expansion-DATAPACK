# >>> generated function callers >>>
# Callers for expansion:mechanics/gravity/get_score
# Total callers: 5 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/launch_pad/calculate_stats (5 callers) [WARN side/down 4]
# <<< generated function callers <<<

execute if predicate expansion:dimension/moon run return run scoreboard players operation #return exp.value = #moon exp.gravity
execute if predicate expansion:dimension/mars run return run scoreboard players operation #return exp.value = #mars exp.gravity
execute if predicate expansion:dimension/venus run return run scoreboard players operation #return exp.value = #venus exp.gravity
execute if predicate expansion:dimension/jupiter run return run scoreboard players operation #return exp.value = #jupiter exp.gravity
execute if predicate expansion:dimension/europa run return run scoreboard players operation #return exp.value = #europa exp.gravity
execute if predicate expansion:dimension/zero_gravity run return run scoreboard players operation #return exp.value = #zero exp.gravity

return run scoreboard players operation #return exp.value = #earth exp.gravity