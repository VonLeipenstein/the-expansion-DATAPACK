# increase speed while pressing W.
execute if score .w exp.wasd matches 1 unless score .s exp.wasd matches 1 if score @s exp.speed matches -10..49 run scoreboard players add @s exp.speed 1
execute if score .w exp.wasd matches 1 unless score .s exp.wasd matches 1 if score @s exp.speed matches -50..-11 run scoreboard players add @s exp.speed 2
# reduce speed while pressing S.
execute if score .s exp.wasd matches 1 unless score .w exp.wasd matches 1 if score @s exp.speed matches 11..50 run scoreboard players remove @s exp.speed 2
execute if score .s exp.wasd matches 1 unless score .w exp.wasd matches 1 if score @s exp.speed matches -49..10 run scoreboard players remove @s exp.speed 1

# zero gravity things
execute if predicate expansion:dimension/zero_gravity if block ^ ^-1 ^ #expansion:air if block ^ ^-2 ^ #expansion:air run data merge entity @s {NoGravity:1b}

# movement
execute unless score @s exp.speed matches -11..11 run function expansion:vehicles/buggy/propulsion/drive

# animation control
execute if score @s[tag=exp.buggy_driving] exp.speed matches -11..11 run function expansion:vehicles/buggy/anim_control/stop_driving
execute if score @s[tag=!exp.buggy_driving] exp.speed matches 11.. run function expansion:vehicles/buggy/anim_control/start_driving
execute if score @s[tag=!exp.buggy_driving] exp.speed matches ..-11 run function expansion:vehicles/buggy/anim_control/start_driving_back

# break the buggy when it hits water
execute if block ~ ~ ~ #expansion:liquid run function expansion:vehicles/buggy/liquid_interaction

# grant passenger oxygen
execute if score @s exp.oxygen_lvl matches 1.. on passengers if entity @s[tag=exp.inside_buggy] unless score @s exp.oxygen_lvl >= @s exp.oxygen_max run function expansion:vehicles/buggy/oxygen/give

# display info
scoreboard players operation #input exp.oxygen_lvl = @s exp.oxygen_lvl
scoreboard players operation #input exp.oxygen_max = @s exp.oxygen_max
function expansion:mechanics/oxygen/oxygen_percentage
title @p[tag=exp.tick_player] actionbar [{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0","color":"aqua"},{"score":{"name":"#temp","objective":"exp.speed"},"color":"aqua"},{"text":"%\u25b6     ","color":"aqua"},{"translate":"exp_screentxt_oxygen_level"},{"text":"\u25c0","color":"aqua"},{"score":{"name":"@p[tag=exp.tick_player]","objective":"exp.oxygen_percent"},"color":"aqua"},{"text":"%\u25b6     ","color":"aqua"},{"translate":"exp_screentxt_buggyoxygen_level"},{"text":"\u25c0","color":"aqua"},{"score":{"name":"#output","objective":"exp.oxygen_percent"},"color":"aqua"},{"text":"%\u25b6","color":"aqua"}]
#execute if score @s exp.speed matches -10..10 run title @p actionbar [{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"text":"0%"},{"text":"\u25b6"}]
execute if score @s exp.speed matches -10..10 run title @p[tag=exp.tick_player] actionbar [{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0","color":"aqua"},{"text":"0%","color":"aqua"},{"text":"%\u25b6     ","color":"aqua"},{"translate":"exp_screentxt_oxygen_level"},{"text":"\u25c0","color":"aqua"},{"score":{"name":"@p[tag=exp.tick_player]","objective":"exp.oxygen_percent"},"color":"aqua"},{"text":"%\u25b6     ","color":"aqua"},{"translate":"exp_screentxt_buggyoxygen_level"},{"text":"\u25c0","color":"aqua"},{"score":{"name":"#output","objective":"exp.oxygen_percent"},"color":"aqua"},{"text":"%\u25b6","color":"aqua"}]
