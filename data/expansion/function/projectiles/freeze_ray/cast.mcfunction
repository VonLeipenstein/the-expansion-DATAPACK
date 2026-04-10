# >>> generated function callers >>>
# Callers for expansion:projectiles/freeze_ray/cast
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:items/cryoblaster/shoot (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute unless function expansion:projectiles/slowcaster_debug run return fail

tag @s add exp.slowcast
tag @s add exp.freeze_ray

# set parameters (can be set externally thanks to the fakeplayer)
scoreboard players operation @s exp.max_range = #temp exp.max_range
scoreboard players operation @s exp.speed = #temp exp.speed
scoreboard players operation @s exp.unique_id = #temp exp.unique_id

# align the arc
execute positioned ^ ^ ^ run rotate @s ~ ~