data modify entity @s Pos set from storage expansion:return_pos data.ReturnPos

execute at @s as @a[tag=exp.tick_player] on vehicle on vehicle in expansion:jupiter run tp @s ~ 300 ~ ~ 35

data remove storage expansion:return_pos data.ReturnPos

kill @s