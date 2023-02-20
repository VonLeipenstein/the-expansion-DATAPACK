scoreboard players operation #angle_tilt exp.math -= #angle_ver exp.math

execute unless score #angle_tilt exp.math matches -180..180 run function expansion:vehicles/spaceship/propulsion/tilt_correction

execute if score #angle_tilt exp.math matches 45.. run scoreboard players set #angle_tilt exp.math 45
execute if score #angle_tilt exp.math matches ..-45 run scoreboard players set #angle_tilt exp.math -45

scoreboard players operation #angle_hor exp.math *= #100 exp.const
execute if score #angle_hor exp.math matches ..-1 run scoreboard players operation #angle_hor exp.math *= #-1 exp.const
scoreboard players operation #angle_hor exp.math /= #-90 exp.const
scoreboard players operation #angle_hor exp.math += #100 exp.const
scoreboard players operation #angle_tilt exp.math *= #angle_hor exp.math

execute on passengers store result entity @s Pose.Head[2] float -0.01 on vehicle run scoreboard players get #angle_tilt exp.math