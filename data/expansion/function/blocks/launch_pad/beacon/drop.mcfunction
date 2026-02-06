execute store result storage expansion:temp data.pad_id int 1 run scoreboard players get @s exp.pad_id
loot replace entity @p[tag=exp.clicked] weapon.mainhand loot expansion:tools/cargo_beacon
item modify entity @p[tag=exp.clicked] weapon.mainhand expansion:cargo_beacon/set_pad_id
data remove storage expansion:temp data.pad_id