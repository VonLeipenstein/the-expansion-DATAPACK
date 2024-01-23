# teleport the player in front of the mech
execute at @s positioned ^ ^ ^2 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @p[tag=exp.exit_mech] ~ ~ ~

# reset scores
scoreboard players reset @s exp.timer_2
scoreboard players reset @s exp.speed
scoreboard players reset @s exp.sneak_delay

# reset animations
function expansion:vehicles/mech/anim_control/stop_walking
function expansion:vehicles/mech/anim_control/stop_walking_back

# remove tags from the player
tag @p[tag=exp.exit_mech] remove exp.inside_mech
tag @p[tag=exp.exit_mech] remove exp.inside_vehicle