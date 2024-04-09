# teleport the player in front of the mech
execute at @s positioned ^ ^ ^2 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @p[tag=exp.exit_mech] ~ ~ ~

# reset scores
scoreboard players reset @s exp.timer_2
scoreboard players reset @s exp.speed
scoreboard players set @s exp.mech_left_dur 0
scoreboard players set @s exp.mech_right_dur 0

data merge entity @s {NoAI:1b}

# reset animations
function expansion:vehicles/mech/anim_control/stop_walking
function expansion:vehicles/mech/anim_control/stop_walking_back

execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/pause_all

effect clear @p[tag=exp.exit_mech] speed

# remove tags from the player
tag @p[tag=exp.exit_mech] remove exp.inside_mech
tag @p[tag=exp.exit_mech] remove exp.inside_vehicle
tag @p[tag=exp.exit_mech] remove exp.mech_pilot