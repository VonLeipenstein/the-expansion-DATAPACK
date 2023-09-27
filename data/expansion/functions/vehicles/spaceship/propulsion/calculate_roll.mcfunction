# make sure the tilt angle is in the correct format
scoreboard players operation #roll exp.math -= #yaw exp.math
execute unless score #roll exp.math matches -180000..180000 run function expansion:vehicles/spaceship/propulsion/tilt_correction
execute if score #roll exp.math matches 45000.. run scoreboard players set #roll exp.math 45000
execute if score #roll exp.math matches ..-45000 run scoreboard players set #roll exp.math -45000

# calculate the tilt
scoreboard players operation #pitch exp.math *= #100 exp.const
execute if score #pitch exp.math matches ..-1 run scoreboard players operation #pitch exp.math *= #-1 exp.const
scoreboard players operation #pitch exp.math /= #-90000 exp.const
scoreboard players add #pitch exp.math 100

#scoreboard players operation #pitch exp.math /= #1000 exp.const
scoreboard players operation #roll exp.math *= #pitch exp.math

