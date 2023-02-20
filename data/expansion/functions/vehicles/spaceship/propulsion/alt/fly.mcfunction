# make the armor stand rotate slowly towards the players rotation.
execute unless score .d exp.wasd matches 1 anchored eyes rotated as @p positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~-1 ~

# store rotation data of the armor stand and assign it to a scoreboard value.
data modify storage exp.rotation Rotation set from entity @s Rotation
execute on passengers run data merge entity @s {Rotation:[180.0f,0.0f]}
execute store result score #yaw exp.math run data get storage exp.rotation Rotation[0] 1
execute store result score #pitch exp.math run data get storage exp.rotation Rotation[1] 1
execute store result score #player_yaw exp.math run data get entity @p Rotation[0] 1

# calculate the motion vector values.
function expansion:vehicles/spaceship/propulsion/motion_calculation

# merge the calculated vector with the motion and make the armor stand move.
execute store result entity @s Motion[0] double -0.000001 run scoreboard players get #velocity_x exp.math
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #velocity_y exp.math
execute store result entity @s Motion[2] double -0.000001 run scoreboard players get #velocity_z exp.math

# calculate how much the spaceship should tilt when taking corners
execute unless score .d exp.wasd matches 1 run function expansion:vehicles/spaceship/propulsion/calculate_tilt