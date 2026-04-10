# >>> generated function callers >>>
# Callers for expansion:projectiles/ship_blaster/inner_loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:projectiles/ship_blaster/inner_loop (1 caller) [OK same-folder]
# - function expansion:projectiles/ship_blaster/loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

tp @s ^ ^ ^1

scoreboard players remove @s exp.max_range 1
scoreboard players remove #temp exp.speed 1

# particles
execute if score @s exp.unique_id matches 0 run function expansion:projectiles/ship_blaster/particles/regular
execute if score @s exp.unique_id matches 1 run function expansion:projectiles/ship_blaster/particles/digging
execute if score @s exp.unique_id matches 2 run function expansion:projectiles/ship_blaster/particles/gatling

# hit blocks or entities
execute at @s unless block ~ ~ ~ #expansion:air run function expansion:projectiles/ship_blaster/hit_block/check
execute at @s positioned ~-.5 ~-.5 ~-.5 if entity @e[type=!#expansion:ignore,dx=0,limit=1] run function expansion:projectiles/ship_blaster/hit

# repeat
execute if score #temp exp.speed matches 1.. if score @s exp.max_range matches 1.. at @s run function expansion:projectiles/ship_blaster/inner_loop