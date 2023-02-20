# actionbar information
title @p actionbar [{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"score":{"name":"@s","objective":"exp.hold_value"}},{"text":"%\u25b6"}]
execute if score @s exp.speed matches -10..10 run title @p actionbar [{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"text":"0%"},{"text":"\u25b6"}]

# calculate percentage of speed
scoreboard players operation #speed exp.math = @s exp.speed
execute unless score @s exp.speed matches ..-11 run scoreboard players remove #speed exp.math 10
execute if score @s exp.speed matches ..-11 run scoreboard players add #speed exp.math 10
scoreboard players operation #speed exp.math *= #100 exp.const
scoreboard players operation #speed exp.math /= #90 exp.const
scoreboard players operation @s exp.hold_value = #speed exp.math

# increase speed while pressing W.
execute if score .w exp.wasd matches 1 unless score .s exp.wasd matches 1 if score @s exp.speed matches -10..99 run scoreboard players add @s exp.speed 1
execute if score .w exp.wasd matches 1 unless score .s exp.wasd matches 1 if score @s exp.speed matches -100..-11 run scoreboard players add @s exp.speed 4
# reduce speed while pressing S.
execute if score .s exp.wasd matches 1 unless score .w exp.wasd matches 1 if score @s exp.speed matches 11..100 run scoreboard players remove @s exp.speed 4
execute if score .s exp.wasd matches 1 unless score .w exp.wasd matches 1 if score @s exp.speed matches -99..10 run scoreboard players remove @s exp.speed 1

# stop the buggy when it hits something
execute rotated ~ 0 unless block ^ ^0.5 ^1 #expansion:expansion_air unless block ^ ^1.5 ^1 #expansion:expansion_air run scoreboard players set @s exp.speed 0
execute rotated ~ 0 unless block ^ ^0.5 ^1 #expansion:expansion_air unless block ^ ^1.5 ^1 #expansion:expansion_air run tp @s ^ ^ ^-0.1
execute rotated ~ 0 unless block ^ ^0.5 ^-1 #expansion:expansion_air unless block ^ ^1.5 ^-1 #expansion:expansion_air run tp @s ^ ^ ^0.1

# movement
execute unless score @s exp.speed matches -11..11 unless predicate expansion:dimension/zero_gravity run function expansion:vehicles/buggy/propulsion/drive

# break the buggy when it hits water
execute if block ~ ~ ~ #expansion:expansion_liquid run function expansion:vehicles/buggy/liquid_interaction


