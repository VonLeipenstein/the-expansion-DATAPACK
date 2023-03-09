execute if entity @s[tag=exp.turn_left] run function expansion:mobs/evil_drone/ranged_drone/turn_left
execute if entity @s[tag=exp.turn_right] run function expansion:mobs/evil_drone/ranged_drone/turn_right

# apply a random chance to turn a bit to make some random behavior
execute if predicate expansion:chance/005_chance run function expansion:mobs/evil_drone/ranged_drone/switch_turn
