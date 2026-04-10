# >>> generated function callers >>>
# Callers for expansion:blocks/tesla_coil/coil/zap
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/tesla_coil/coil/add_target (1 caller) [OK same-folder]
# <<< generated function callers <<<

# speed is the amount of blocks per tick the signal travels
# half the max range divides the load over 2 ticks
scoreboard players set #temp exp.speed 15
# max range is the max amount of blocks the signal can travel (/2 in this case)
scoreboard players set #temp exp.max_range 30
# include unique_id 1 to enable branching
scoreboard players set #temp exp.counter_1 10
# size_mod is the fraction of the current max_range that is given to the branch
scoreboard players set #temp exp.size_mod 2
# size is the maximum size of a branch
scoreboard players set #temp exp.size 5
# damage is a BOOL that determines if this zap can deal damage
scoreboard players set #temp exp.damage 1
# particles
scoreboard players set #temp exp.unique_id 1
# set number of allowed bounces
execute store result score #temp exp.counter_2 run random value 0..1

# give the arc a random id (used to prevent it from hitting already hit entities)
execute store result score #temp exp.arc_id run random value -10000..10000
execute on passengers if entity @s[tag=exp.tesla_hitbox] run scoreboard players operation @s exp.arc_id = #temp exp.arc_id

# cast
execute positioned ^ ^ ^0.2 summon snowball run function expansion:projectiles/electric_arc/cast