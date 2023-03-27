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

# stop the buggy when it hits something
execute rotated ~ 0 unless block ^ ^0.5 ^1 #expansion:expansion_air unless block ^ ^1.5 ^1 #expansion:expansion_air run scoreboard players set @s exp.speed 0
execute rotated ~ 0 unless block ^ ^0.5 ^1 #expansion:expansion_air unless block ^ ^1.5 ^1 #expansion:expansion_air run tp @s ^ ^ ^-0.1
execute rotated ~ 0 unless block ^ ^0.5 ^-1 #expansion:expansion_air unless block ^ ^1.5 ^-1 #expansion:expansion_air run tp @s ^ ^ ^0.1

# calculate percentage of speed
scoreboard players operation #speed exp.math = @s exp.speed
execute unless score @s exp.speed matches ..-11 run scoreboard players remove #speed exp.math 10
execute if score @s exp.speed matches ..-11 run scoreboard players add #speed exp.math 10
scoreboard players operation #speed exp.math *= #100 exp.const
scoreboard players operation #speed exp.math /= #90 exp.const
scoreboard players operation @s exp.hold_value = #speed exp.math

# launch mobs you hit, I was extremely bored when I made this and this made my day just a little better
execute if score @s exp.speed matches 50.. positioned ^ ^ ^2 as @e[distance=..1.9,nbt={OnGround:1b}] run function expansion:vehicles/buggy/hit_mob