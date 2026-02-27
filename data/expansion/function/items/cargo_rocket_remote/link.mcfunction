# link this remote to a cargo rocket
execute store result storage expansion:temp data.pad_id int 1 run scoreboard players get @s exp.pad_id
item modify entity @p[tag=exp.clicked] weapon.mainhand expansion:cargo_rocket_remote/set_pad_id
data remove storage expansion:temp data.pad_id