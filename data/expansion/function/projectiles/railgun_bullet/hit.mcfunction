# >>> generated function callers >>>
# Callers for expansion:projectiles/railgun_bullet/hit
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/railgun_bullet/inner_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# if the block ahead is solid, resume the cast with more precision
execute unless block ^ ^ ^1 #expansion:air run return run function expansion:projectiles/railgun_bullet/quickcast

execute positioned ~-.5 ~-.5 ~-.5 as @e[type=!#expansion:ignore,tag=!exp.ignore_for_damage,dx=0,limit=1] positioned ~.5 ~.5 ~.5 run return run function expansion:projectiles/railgun_bullet/damage

return fail