execute store result score #random_x exp.speed run random value -200..200
execute store result score #random_y exp.speed run random value -100..200
execute store result score #random_z exp.speed run random value -200..200
data modify storage expansion:temp explode_motion set value [0.0d, 0.0d, 0.0d]
execute store result storage expansion:temp explode_motion[0] double 0.01 run scoreboard players get #random_x exp.speed
execute store result storage expansion:temp explode_motion[1] double 0.01 run scoreboard players get #random_y exp.speed
execute store result storage expansion:temp explode_motion[2] double 0.01 run scoreboard players get #random_z exp.speed
data modify entity @s Motion set from storage expansion:temp explode_motion
data remove storage expansion:temp explode_motion
scoreboard players reset #random_x exp.speed
scoreboard players reset #random_y exp.speed
scoreboard players reset #random_z exp.speed