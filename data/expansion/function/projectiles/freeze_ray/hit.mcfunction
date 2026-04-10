# >>> generated function callers >>>
# Callers for expansion:projectiles/freeze_ray/hit
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/freeze_ray/inner_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute unless block ~ ~ ~ #expansion:air run return 1

execute positioned ~-.5 ~-.5 ~-.5 as @e[type=!#expansion:ignore,dx=0,limit=1] positioned ~.5 ~.5 ~.5 run return run function expansion:projectiles/freeze_ray/freeze

return fail