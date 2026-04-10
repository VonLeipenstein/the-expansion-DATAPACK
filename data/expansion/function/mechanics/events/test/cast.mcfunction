# >>> generated function callers >>>
# Callers for expansion:mechanics/events/test/cast
# Total callers: 0
# None found
# <<< generated function callers <<<

spreadplayers ~ ~ 10 50 false @s
#execute store result entity @s Rotation[0] float 1 run function expansion:utilities/random/-180_180
#execute store result entity @s Rotation[1] float 1 run function expansion:utilities/random/-90_90

# speed is the amount of blocks per tick the signal travels
# half the max range divides the load over 2 ticks
scoreboard players set #temp exp.speed 100
# max range is the max amount of blocks the signal can travel (/2 in this case)
scoreboard players set #temp exp.max_range 200
# allowed number of branches
scoreboard players set #temp exp.counter_1 10
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