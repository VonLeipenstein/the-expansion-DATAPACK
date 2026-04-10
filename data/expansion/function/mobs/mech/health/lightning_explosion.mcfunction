# >>> generated function callers >>>
# Callers for expansion:mobs/mech/health/lightning_explosion
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:mobs/mech/health/die/main (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

execute store result entity @s Rotation[0] float 1 run function expansion:utilities/random/-180_180
execute store result entity @s Rotation[1] float 1 run function expansion:utilities/random/-90_90

# speed is the amount of blocks per tick the signal travels
# half the max range divides the load over 2 ticks
scoreboard players set #temp exp.speed 5
# max range is the max amount of blocks the signal can travel (/2 in this case)
scoreboard players set #temp exp.max_range 10
# allowed number of branches
scoreboard players set #temp exp.counter_1 10
# size_mod is the fraction of the current max_range that is given to the branch
scoreboard players set #temp exp.size_mod 2
# size is the maximum size of a branch
scoreboard players set #temp exp.size 50
# damage is a BOOL that determines if this zap can deal damage
scoreboard players set #temp exp.damage 1
# determined which particles are displayed
scoreboard players set #temp exp.unique_id 1

execute at @s positioned ~ ~2 ~ positioned ^ ^ ^1 summon marker run function expansion:projectiles/electric_arc/cast