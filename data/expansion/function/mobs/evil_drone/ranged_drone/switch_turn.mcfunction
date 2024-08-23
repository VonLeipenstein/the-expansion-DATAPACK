execute if entity @s[tag=!exp.turn_right] run function expansion:mobs/evil_drone/ranged_drone/right_turn
execute if entity @s[tag=!exp.turn_left,tag=!exp.turned] run function expansion:mobs/evil_drone/ranged_drone/left_turn
tag @s remove exp.turned
