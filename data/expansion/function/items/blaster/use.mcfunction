# >>> generated function callers >>>
# Callers for expansion:items/blaster/use
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/rightclick/tools (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# set gatling blast parameters
scoreboard players set #temp exp.unique_id 2
scoreboard players set #temp exp.speed 5
scoreboard players set #temp exp.max_range 100

execute anchored eyes positioned ^ ^-.3 ^1 summon item_display run function expansion:projectiles/ship_blaster/cast