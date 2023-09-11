# calculate the roll
function expansion:vehicles/spaceship/propulsion/calculate_tilt

# yaw
execute store result entity @s Rotation[0] float 1 run scoreboard players get #angle_ver exp.math
# roll
execute store result entity @s Pose.Head[2] float -0.01 run scoreboard players get #angle_tilt exp.math
# pitch
data modify entity @s Pose.Head[0] set from storage expansion:rotation Rotation[1]

# in a very particular case where the players head pose rotation is exactly 0,0 the head pose data would be deleted and the spaceship won't rotate anymore. this detects and fixes that edge case
execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[1f,0f,0f]}}