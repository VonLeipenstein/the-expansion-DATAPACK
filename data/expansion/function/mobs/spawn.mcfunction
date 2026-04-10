# >>> generated function callers >>>
# Callers for expansion:mobs/spawn
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# otherwise, spawn mobs
execute if entity @s[tag=exp.evil_drone_spawner] run function expansion:mobs/evil_drone/summon/from_spawner

execute if entity @s[tag=exp.san_holo_spawner] run function expansion:mobs/space_trader/summon/from_spawner

kill @s