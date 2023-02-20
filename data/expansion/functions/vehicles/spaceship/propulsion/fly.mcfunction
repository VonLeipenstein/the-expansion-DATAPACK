# make the armor stand rotate slowly towards the players rotation.
execute unless score .d exp.wasd matches 1 anchored eyes rotated as @p positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

# store rotation data of the armor stand and assign it to a scoreboard value.
data modify storage exp.rotation Rotation set from entity @s Rotation
execute store result score #angle_hor exp.math run data get storage exp.rotation Rotation[1] 1
execute store result score #angle_ver exp.math run data get storage exp.rotation Rotation[0] 1
execute store result score #angle_tilt exp.math run data get entity @p Rotation[0] 1

# calculate the motion vector values.
function expansion:vehicles/spaceship/propulsion/motion_calculation

# merge the calculated vector with the motion and make the armor stand move.
execute store result entity @s Motion[0] double -0.000001 run scoreboard players get #velocity_x exp.math
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #velocity_y exp.math
execute store result entity @s Motion[2] double -0.000001 run scoreboard players get #velocity_z exp.math

# calculate how much the spaceship should tilt when taking corners
execute unless score .d exp.wasd matches 1 run function expansion:vehicles/spaceship/propulsion/calculate_tilt

# modify the passenger armor stand(which displays the spaceship model) to make the model rotate
execute on passengers run data modify entity @s Rotation[0] set from storage exp.rotation Rotation[0]
execute on passengers run data modify entity @s Pose.Head[0] set from storage exp.rotation Rotation[1]

# in a very particular case where the players head pose rotation is exactly 0,0 the data would be deleted and the spaceship won't rotate anymore. this detects and fixes that edge case
execute on passengers unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[1f,0f,0f]}}