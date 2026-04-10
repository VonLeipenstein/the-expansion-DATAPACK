# >>> generated function callers >>>
# Callers for expansion:mobs/evil_drone/ranged_drone/evade_player
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/evil_drone/ranged_drone/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if entity @s[tag=exp.turn_left] run function expansion:mobs/evil_drone/ranged_drone/turn_left
execute if entity @s[tag=exp.turn_right] run function expansion:mobs/evil_drone/ranged_drone/turn_right

# apply a random chance to turn a bit to make some random behavior
execute if predicate expansion:chance/001_chance run function expansion:mobs/evil_drone/ranged_drone/switch_turn