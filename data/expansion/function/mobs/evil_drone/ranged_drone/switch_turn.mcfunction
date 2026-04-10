# >>> generated function callers >>>
# Callers for expansion:mobs/evil_drone/ranged_drone/switch_turn
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/evil_drone/ranged_drone/evade_player (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if entity @s[tag=!exp.turn_right] run function expansion:mobs/evil_drone/ranged_drone/right_turn
execute if entity @s[tag=!exp.turn_left,tag=!exp.turned] run function expansion:mobs/evil_drone/ranged_drone/left_turn
tag @s remove exp.turned
