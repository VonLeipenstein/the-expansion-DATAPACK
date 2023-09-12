# fix angles being weird when lookinh straight up or down. limitation of Euler angles or something
execute if score #pitch exp.math matches ..-89 on vehicle run data modify entity @s Rotation[1] set value -89.0f
execute if score #pitch exp.math matches 88.. on vehicle run data modify entity @s Rotation[1] set value 88.0f

# pitch
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get #pitch exp.math

# yaw
execute store result entity @s Rotation[0] float 1 run scoreboard players get #yaw exp.math

# roll
function expansion:vehicles/spaceship/propulsion/calculate_roll
execute store result entity @s Pose.Head[2] float -0.01 run scoreboard players get #roll exp.math
#data modify entity @s Pose.Head[0] set from storage expansion:rotation Rotation[1]

# in a very particular case where the players head pose rotation is exactly 0,0 the head pose data would be deleted and the spaceship won't rotate anymore. this detects and fixes that edge case
execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[1f,0f,0f]}}