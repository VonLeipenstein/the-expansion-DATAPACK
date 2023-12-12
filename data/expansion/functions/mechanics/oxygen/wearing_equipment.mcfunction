# suffocate players if their oxygen runs out
execute unless score @s exp.oxygen_level matches 1.. run function expansion:mechanics/oxygen/suffocate

# calculate oxygen percentage
execute if score @s exp.oxygen_level matches 1.. run function expansion:mechanics/oxygen/oxygen_percentage

# show titles
title @s[scores={exp.oxygen_percent=50..}] actionbar ["",{"translate":"exp_screentxt_oxygen_level"},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"exp.oxygen_percent"},"color":"green"},{"text":"%\u25b6","color":"green"}]
title @s[scores={exp.oxygen_percent=10..50}] actionbar ["",{"translate":"exp_screentxt_oxygen_level"},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"exp.oxygen_percent"},"color":"gold"},{"text":"%\u25b6","color":"gold"}]
title @s[scores={exp.oxygen_percent=..10}] actionbar ["",{"translate":"exp_screentxt_oxygen_level"},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"exp.oxygen_percent"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"}]

# remove oxygen
scoreboard players remove @s[scores={exp.oxygen_level=1..}] exp.oxygen_level 1