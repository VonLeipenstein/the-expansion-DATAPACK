# store rotation data and assign it to a scoreboard value
execute store result score #angle exp.math run data get entity @s Rotation[0] 1
scoreboard players operation #input exp.math = #angle exp.math
# the sin approximation algorithm only works for angles between 0 and 180 so make any negative angles positive
execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const

# turn when pressing a or d
scoreboard players operation #turn exp.math = #angle exp.math
execute if score .a exp.wasd matches 1 unless score .d exp.wasd matches 1 run function expansion:vehicles/buggy/propulsion/turn_left
execute if score .d exp.wasd matches 1 unless score .a exp.wasd matches 1 run function expansion:vehicles/buggy/propulsion/turn_right
# merge the new rotation with the armor stand
execute store result entity @s Rotation[0] float 1 run scoreboard players get #turn exp.math 

# calculate the motion vector
function expansion:vehicles/buggy/propulsion/move

# going up- and downhill
execute rotated ~ 0 unless block ^ ^0.5 ^1 #expansion:expansion_air if block ^ ^1.5 ^1 #expansion:expansion_air run tp @s ^ ^1 ^0.2
execute rotated ~ 0 unless block ^ ^0.5 ^-1 #expansion:expansion_air if block ^ ^1.5 ^-1 #expansion:expansion_air run tp @s ^ ^1 ^-0.2

# aesthetic effects
function expansion:vehicles/buggy/wheels_animation
function expansion:vehicles/buggy/sound_loop