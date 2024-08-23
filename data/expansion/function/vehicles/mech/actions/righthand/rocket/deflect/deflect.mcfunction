execute on passengers run data remove entity @s interaction

execute rotated as @p[tag=exp.deflected_rocket] positioned as @s run tp @s ^ ^ ^ ~ ~

tag @e[tag=exp.mech_pilot,limit=1,sort=nearest] add exp.rocket_target

# give the detected target an id if it doesn't already have one
execute as @e[tag=exp.mech_pilot,limit=1,sort=nearest] unless score @s exp.unique_id matches 1.. run function expansion:vehicles/mech/actions/righthand/rocket/target/give_target_score

# set the id of this rocket equal to the id of the target
scoreboard players operation @s exp.unique_id = @e[tag=exp.mech_pilot,limit=1,sort=nearest] exp.unique_id

# make sure the rocket doesn't explode in the next few frames
scoreboard players add @s exp.cooldown 5

# add some lifetime to the rocket
scoreboard players add @s exp.max_range 100

tag @e[tag=exp.mech_pilot,tag=exp.rocket_target,limit=1,sort=nearest] remove exp.rocket_target