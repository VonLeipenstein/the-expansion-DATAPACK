# >>> generated function callers >>>
# Callers for expansion:projectiles/autocannon_bullet/inner_loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:projectiles/autocannon_bullet/inner_loop (1 caller) [OK same-folder]
# - function expansion:projectiles/autocannon_bullet/loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

tp @s ^ ^ ^1

scoreboard players remove @s exp.max_range 1
scoreboard players remove #temp exp.speed 1

# random chance for some particle
execute if predicate expansion:chance/020_chance run particle white_smoke

# hit blocks or entities
execute if function expansion:projectiles/autocannon_bullet/hit run return run scoreboard players set @s exp.max_range 0

# repeat
execute if score #temp exp.speed matches 1.. if score @s exp.max_range matches 1.. at @s run function expansion:projectiles/autocannon_bullet/inner_loop