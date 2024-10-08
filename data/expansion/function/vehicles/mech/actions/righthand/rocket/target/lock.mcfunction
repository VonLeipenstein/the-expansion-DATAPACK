tag @e[type=!#expansion:ignore,tag=!exp.block,tag=!exp.vehicle,tag=!exp.ignore,tag=!exp.claimed_rocket_target,limit=1,sort=nearest] add exp.rocket_target

# give the detected target an id if it doesn't already have one
execute as @e[tag=exp.rocket_target,limit=1] unless score @s exp.unique_id matches 1.. run function expansion:vehicles/mech/actions/righthand/rocket/target/give_target_score

# set the id of this rocket equal to the id of the target
scoreboard players operation @s exp.unique_id = @e[tag=exp.rocket_target,limit=1] exp.unique_id

# store this id
scoreboard players operation #temp exp.unique_id = @s exp.unique_id

# stop searching
tag @e[tag=exp.rocket_target,limit=1] remove exp.rocket_target
scoreboard players reset @s exp.max_range
kill @s