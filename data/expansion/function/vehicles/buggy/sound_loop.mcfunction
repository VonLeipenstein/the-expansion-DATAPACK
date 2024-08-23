scoreboard players remove @s exp.timer_2 1
execute unless score @s exp.timer_2 matches 1.. run playsound expansion:buggy.engine_driving player @a ~ ~ ~ 1 1 0
execute unless score @s exp.timer_2 matches 1.. run scoreboard players set @s exp.timer_2 302
