# >>> generated function callers >>>
# Callers for expansion:projectiles/autocannon_bullet/hit
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/autocannon_bullet/inner_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute unless block ~ ~ ~ #expansion:air run return run function expansion:projectiles/autocannon_bullet/hit_block

execute positioned ~-.5 ~-.5 ~-.5 as @e[type=!#expansion:ignore,dx=0,dy=0,dz=0,limit=1] positioned ~.5 ~.5 ~.5 run return run function expansion:projectiles/autocannon_bullet/damage

return fail