# >>> generated function callers >>>
# Callers for expansion:projectiles/railgun_bullet/inner_loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:projectiles/railgun_bullet/inner_loop (1 caller) [OK same-folder]
# - function expansion:projectiles/railgun_bullet/loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

tp @s ^ ^ ^1

scoreboard players remove @s exp.max_range 1
scoreboard players remove #temp exp.speed 1

# trail particles
execute if predicate expansion:chance/050_chance run particle firework ^ ^ ^-.5 0 0 0 0 1 force
particle white_ash ^ ^ ^ 0 0 0 0 1 force

# hit entities, half the remaining range upon hitting one
execute at @s if function expansion:projectiles/railgun_bullet/hit run return run scoreboard players operation @s exp.max_range /= #2 exp.const

# repeat
execute if score @s exp.max_range matches 1.. if score #temp exp.speed matches 1.. if score @s exp.counter_1 matches 1.. at @s run function expansion:projectiles/railgun_bullet/inner_loop