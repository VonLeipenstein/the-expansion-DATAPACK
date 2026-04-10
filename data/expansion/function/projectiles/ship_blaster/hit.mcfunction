# >>> generated function callers >>>
# Callers for expansion:projectiles/ship_blaster/hit
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/ship_blaster/inner_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if score @s exp.unique_id matches 0 as @e[type=!#expansion:ignore,dx=0,limit=1] at @s run function expansion:projectiles/ship_blaster/damage/regular
execute if score @s exp.unique_id matches 1 as @e[type=!#expansion:ignore,dx=0,limit=1] at @s run function expansion:projectiles/ship_blaster/damage/digging
execute if score @s exp.unique_id matches 2 as @e[type=!#expansion:ignore,dx=0,limit=1] at @s run function expansion:projectiles/ship_blaster/damage/gatling

# stop the projectile
scoreboard players set @s exp.max_range 0