scoreboard players operation #player_yaw exp.math -= #yaw exp.math

execute unless score #player_yaw exp.math matches -180..180 run function expansion:vehicles/spaceship/propulsion/tilt_correction

execute if score #player_yaw exp.math matches 45.. run scoreboard players set #player_yaw exp.math 45
execute if score #player_yaw exp.math matches ..-45 run scoreboard players set #player_yaw exp.math -45

#scoreboard players operation #pitch exp.math *= #100 exp.const
#execute if score #pitch exp.math matches ..-1 run scoreboard players operation #pitch exp.math *= #-1 exp.const
#scoreboard players operation #pitch exp.math /= #-90 exp.const
#scoreboard players operation #pitch exp.math += #100 exp.const
#scoreboard players operation #roll exp.math *= #pitch exp.math

#scoreboard players operation #roll exp.math = #pitch exp.math
#scoreboard players operation #roll exp.math *= #100 exp.const
#execute if score #roll exp.math matches ..-1 run scoreboard players operation #roll exp.math *= #-1 exp.const
#scoreboard players operation #roll exp.math /= #-90 exp.const
#scoreboard players operation #roll exp.math += #100 exp.const

scoreboard players operation #roll exp.math = #player_yaw exp.math
#scoreboard players set #roll exp.math 0
#scoreboard players operation #yaw exp.math *= #-1 exp.const
#scoreboard players operation #pitch exp.math *= #-1 exp.const
#scoreboard players operation #roll exp.math *= #-1 exp.const

function expansion:utilities/math/euler_to_quaternion

data merge storage exp.spaceship_tilt {Quaternion:[0.0f,0.0f,0.0f,0.0f]} 
execute store result storage exp.spaceship_tilt Quaternion[0] float 0.000001 run scoreboard players get #quat.y exp.math
execute store result storage exp.spaceship_tilt Quaternion[1] float 0.000001 run scoreboard players get #quat.z exp.math
execute store result storage exp.spaceship_tilt Quaternion[2] float 0.000001 run scoreboard players get #quat.x exp.math
execute store result storage exp.spaceship_tilt Quaternion[3] float 0.000001 run scoreboard players get #quat.w exp.math

execute on passengers run data modify entity @s transformation.right_rotation set from storage exp.spaceship_tilt Quaternion
execute on passengers run data merge entity @s {interpolation_start:-1,interpolation_duration:1}

