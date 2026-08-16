execute store result entity @s Rotation[0] float 1 run function expansion:utilities/random/-180_180
execute store result entity @s Rotation[1] float 1 run function expansion:utilities/random/-90_0

# speed is the amount of blocks per tick the signal travels
# half the max range divides the load over 2 ticks
scoreboard players set #temp exp.speed 5
# max range is the max amount of blocks the signal can travel (/2 in this case)
execute store result score #temp exp.max_range run random value 10..20
# allowed number of branches
execute store result score #temp exp.counter_1 run random value 4..7
# size_mod is the fraction of the current max_range that is given to the branch
scoreboard players set #temp exp.size_mod 2
# size is the maximum size of a branch
scoreboard players set #temp exp.size 50
# damage is a BOOL that determines if this zap can deal damage
scoreboard players set #temp exp.damage 1
# determined which particles are displayed
scoreboard players set #temp exp.unique_id 1
# allowed bounces
scoreboard players set #temp exp.counter_2 2

execute at @s run tp @s ^ ^ ^0.6

execute at @s run function expansion:projectiles/electric_arc/cast