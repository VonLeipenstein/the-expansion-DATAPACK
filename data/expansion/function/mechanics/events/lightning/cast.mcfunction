# >>> generated function callers >>>
# Callers for expansion:mechanics/events/lightning/cast
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:mechanics/events/lightning/init (1 caller) [OK same-folder]
# - function expansion:mechanics/events/test/init (1 caller) [WARN side/down 2]
# <<< generated function callers <<<
say cast
# speed is the amount of blocks per tick the signal travels
# half the max range divides the load over 2 ticks
scoreboard players set #temp exp.speed 40
# max range is the max amount of blocks the signal can travel (/2 in this case)
scoreboard players set #temp exp.max_range 200
# allowed number of branches
scoreboard players set #temp exp.counter_1 100
# size_mod is the fraction of the current max_range that is given to the branch
scoreboard players set #temp exp.size_mod 2
# size is the maximum size of a branch
scoreboard players set #temp exp.size 50
# damage is a BOOL that determines if this zap can deal damage
scoreboard players set #temp exp.damage 0
# determined which particles are displayed
scoreboard players set #temp exp.unique_id 2

execute at @s positioned ~ ~50 ~ facing ~ ~-1 ~ summon marker run function expansion:projectiles/electric_arc/cast

kill @s