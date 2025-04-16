# range
scoreboard players remove #temp exp.max_range 1
scoreboard players remove #temp exp.cooldown 1
scoreboard players reset #temp exp.bool

tp @s ^ ^ ^

# spawn a placeholder target if the max range has been reached
execute if score #temp exp.max_range matches 1 run return run function expansion:utilities/raycast/target/lock_dummy

# stop the cast
execute unless block ~ ~ ~ #expansion:air run return run function expansion:utilities/raycast/target/lock_dummy

# lock a target if a suitable target is found
execute unless score #temp exp.cooldown matches 1.. positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#expansion:ignore,tag=!exp.block,tag=!exp.vehicle,tag=!exp.ignore_as_target,dx=0,limit=1] positioned ~.5 ~.5 ~.5 if entity @s[dx=0] run function expansion:utilities/raycast/target/lock
# kill the targeter entity if another target was found
execute if score #temp exp.bool matches 1 run return run kill @s

# loop
execute if score #temp exp.max_range matches 1.. positioned ^ ^ ^.5 run function expansion:utilities/raycast/target/loop