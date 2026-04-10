# >>> generated function callers >>>
# Callers for expansion:projectiles/freeze_ray/inner_loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:projectiles/freeze_ray/inner_loop (1 caller) [OK same-folder]
# - function expansion:projectiles/freeze_ray/loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

tp @s ^ ^ ^0.5

scoreboard players remove @s exp.max_range 1
scoreboard players remove #temp exp.speed 1

# particle
particle minecraft:poof ~ ~ ~ 0 0 0 0 1 force

# hit blocks or entities
execute at @s if function expansion:projectiles/freeze_ray/hit run return run scoreboard players set @s exp.max_range 0

# repeat
execute if score #temp exp.speed matches 1.. if score @s exp.max_range matches 1.. at @s run function expansion:projectiles/freeze_ray/inner_loop