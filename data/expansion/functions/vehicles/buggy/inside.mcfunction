# actionbar information
title @p actionbar [{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"score":{"name":"@s","objective":"exp.hold_value"}},{"text":"%\u25b6"}]
execute if score @s exp.speed matches -10..10 run title @p actionbar [{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"text":"0%"},{"text":"\u25b6"}]

# increase speed while pressing W.
execute if score .w exp.wasd matches 1 unless score .s exp.wasd matches 1 if score @s exp.speed matches -10..99 run scoreboard players add @s exp.speed 1
execute if score .w exp.wasd matches 1 unless score .s exp.wasd matches 1 if score @s exp.speed matches -100..-11 run scoreboard players add @s exp.speed 4
# reduce speed while pressing S.
execute if score .s exp.wasd matches 1 unless score .w exp.wasd matches 1 if score @s exp.speed matches 11..100 run scoreboard players remove @s exp.speed 4
execute if score .s exp.wasd matches 1 unless score .w exp.wasd matches 1 if score @s exp.speed matches -99..10 run scoreboard players remove @s exp.speed 1

# zero gravity things
execute if predicate expansion:dimension/zero_gravity if block ^ ^-1 ^ #expansion:air if block ^ ^-2 ^ #expansion:air run data merge entity @s {NoGravity:1b}

# movement
execute unless score @s exp.speed matches -11..11 run function expansion:vehicles/buggy/propulsion/drive

# break the buggy when it hits water
execute if block ~ ~ ~ #expansion:expansion_liquid run function expansion:vehicles/buggy/liquid_interaction