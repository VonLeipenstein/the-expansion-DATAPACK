# fix angles being weird when looking straight up or down to fix gimbal lock
execute if score #pitch exp.math matches ..-89900 on vehicle run data modify entity @s Rotation[1] set value -89.9f

# pitch
execute store result entity @s Pose.Head[0] float 0.001 run scoreboard players get #pitch exp.math

# yaw
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #yaw exp.math

# roll
function expansion:vehicles/spaceship/propulsion/calculate_roll
execute store result entity @s Pose.Head[2] float -0.00001 run scoreboard players get #roll exp.math

# in a very particular case where the players head pose rotation is exactly 0,0 the head pose data would be deleted and the spaceship won't rotate anymore. this detects and fixes that edge case
execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[1f,0f,0f]}}