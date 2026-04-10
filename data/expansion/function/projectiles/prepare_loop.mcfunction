# >>> generated function callers >>>
# Callers for expansion:projectiles/prepare_loop
# Total callers: 5 from 5 source(s)
# Folder rule (function callers): 0/5 honored
# Sources:
# - function expansion:projectiles/autocannon_bullet/loop (1 caller) [WARN side/down 1]
# - function expansion:projectiles/electric_arc/loop (1 caller) [WARN side/down 1]
# - function expansion:projectiles/freeze_ray/loop (1 caller) [WARN side/down 1]
# - function expansion:projectiles/railgun_bullet/loop (1 caller) [WARN side/down 1]
# - function expansion:projectiles/ship_blaster/loop (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

# tp 5 blocks ahead while checking intersecting blocks, a raycast inside a slowcast if you will
# speed is the amount of blocks checked per tick
execute unless score @s exp.max_range matches 1.. run return run function expansion:projectiles/electric_arc/kill

scoreboard players operation #temp exp.speed = @s exp.speed

scoreboard players reset #temp exp.bool