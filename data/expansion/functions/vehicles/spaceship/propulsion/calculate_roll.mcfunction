# make sure the tilt angle is in the correct format
scoreboard players operation #roll exp.math -= #yaw exp.math
execute unless score #roll exp.math matches -180..180 run function expansion:vehicles/spaceship/propulsion/tilt_correction
execute if score #roll exp.math matches 45.. run scoreboard players set #roll exp.math 45
execute if score #roll exp.math matches ..-45 run scoreboard players set #roll exp.math -45

# calculate the tilt
scoreboard players operation #pitch exp.math *= #100 exp.const
execute if score #pitch exp.math matches ..-1 run scoreboard players operation #pitch exp.math *= #-1 exp.const
scoreboard players operation #pitch exp.math /= #-90 exp.const
scoreboard players add #pitch exp.math 100
scoreboard players operation #roll exp.math *= #pitch exp.math

