# make the armor stand rotate slowly towards the players rotation.
execute anchored eyes rotated as @p[tag=exp.spaceship_pilot] positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

# store rotation data of the armor stand and assign it to a scoreboard value.
data modify storage expansion:rotation Rotation set from entity @s Rotation
execute store result score #pitch exp.math run data get storage expansion:rotation Rotation[1] 1000
execute store result score #yaw exp.math run data get storage expansion:rotation Rotation[0] 1000
execute store result score #roll exp.math run data get entity @p[tag=exp.spaceship_pilot] Rotation[0] 1000

# calculate the motion vector values.
function expansion:vehicles/spaceship/propulsion/motion_calculation

# merge the calculated vector with the motion and make the armor stand move.
execute store result storage expansion:motion Motion[0] double -0.000001 run scoreboard players get #velocity_x exp.math
execute store result storage expansion:motion Motion[1] double 0.0001 run scoreboard players get #velocity_y exp.math
execute store result storage expansion:motion Motion[2] double -0.000001 run scoreboard players get #velocity_z exp.math
data modify entity @s Motion set from storage expansion:motion Motion

# regulate the display of the model(yaw, pitch and roll)
execute on passengers if entity @s[type=armor_stand,tag=exp.spaceship_display] run function expansion:vehicles/spaceship/propulsion/model_rotation