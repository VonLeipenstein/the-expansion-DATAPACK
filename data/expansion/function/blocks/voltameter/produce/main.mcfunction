scoreboard players remove @s exp.timer_1 1

execute unless function expansion:blocks/voltameter/produce/should_fill run return run scoreboard players set @s exp.timer_1 0

execute if score @s exp.timer_1 matches 0 run function expansion:blocks/voltameter/produce/finish

particle bubble_column_up ~ ~1 ~ .2 .2 .2 0 1