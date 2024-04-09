scoreboard players add @s exp.timer_2 1
execute if score @s exp.timer_2 matches 20.. run function expansion:mobs/mech/behavior/follow_player/track_target_pos
execute if score @s exp.timer_2 matches 20.. run scoreboard players set @s exp.timer_2 0