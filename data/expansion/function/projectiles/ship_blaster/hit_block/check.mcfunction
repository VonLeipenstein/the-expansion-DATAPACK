# >>> generated function callers >>>
# Callers for expansion:projectiles/ship_blaster/hit_block/check
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/ship_blaster/inner_loop (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if score @s exp.unique_id matches 0 run function expansion:projectiles/ship_blaster/hit_block/regular
execute if score @s exp.unique_id matches 1 run function expansion:projectiles/ship_blaster/hit_block/digging
execute if score @s exp.unique_id matches 2 run function expansion:projectiles/ship_blaster/hit_block/gatling

kill @s