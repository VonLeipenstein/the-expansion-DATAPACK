# range
scoreboard players remove @s exp.max_range 1
execute unless block ~ ~ ~ #expansion:air run scoreboard players set @s exp.max_range 0

# spawn a placeholder target if the max range has been reached
execute if score @s exp.max_range matches 0 summon armor_stand run function expansion:vehicles/mech/actions/righthand/rocket/target/summon_target
execute if score @s exp.max_range matches 0 if score #temp exp.unique_id matches 1.. run scoreboard players operation @s exp.unique_id = #temp exp.unique_id

# lock a target if a suitable target is found
execute if entity @e[type=!#expansion:ignore,tag=!exp.block,tag=!exp.vehicle,tag=!exp.ignore,tag=!exp.claimed_rocket_target,distance=..5,limit=1,sort=nearest] run return run function expansion:vehicles/mech/actions/righthand/rocket/target/lock

# loop
execute if score @s exp.max_range matches 1.. positioned ^ ^ ^.5 run function expansion:vehicles/mech/actions/righthand/rocket/target/loop