# calculate oxygen percentage and check if it changed
scoreboard players operation #input exp.oxygen_lvl = @s exp.oxygen_lvl
scoreboard players operation #input exp.oxygen_max = @s exp.oxygen_max
function expansion:mechanics/oxygen/oxygen_percentage
execute unless score @s exp.oxygen_percent = #output exp.oxygen_percent run function expansion:items/space_equipment/merge_oxygen

# suffocate players if their oxygen runs out
execute unless score @s exp.oxygen_lvl matches 1.. if entity @s[gamemode=!creative,gamemode=!spectator,tag=!exp.has_oxygen,tag=!exp.generator,tag=!exp.inside_vehicle] run function expansion:mechanics/oxygen/suffocate

# show titles
title @s[scores={exp.oxygen_percent=50..},tag=!exp.inside_vehicle] actionbar ["",{"translate":"exp_screentxt_oxygen_level"},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"exp.oxygen_percent"},"color":"green"},{"text":"%\u25b6","color":"green"}]
title @s[scores={exp.oxygen_percent=10..50},tag=!exp.inside_vehicle] actionbar ["",{"translate":"exp_screentxt_oxygen_level"},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"exp.oxygen_percent"},"color":"gold"},{"text":"%\u25b6","color":"gold"}]
title @s[scores={exp.oxygen_percent=..10},tag=!exp.inside_vehicle] actionbar ["",{"translate":"exp_screentxt_oxygen_level"},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"exp.oxygen_percent"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"}]

# remove oxygen
execute if entity @s[gamemode=!creative,gamemode=!spectator,tag=!exp.has_oxygen,tag=!exp.generator,tag=!exp.inside_vehicle] run scoreboard players remove @s[scores={exp.oxygen_lvl=1..}] exp.oxygen_lvl 1