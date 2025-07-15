# Add a counter to distinguish between pieces
scoreboard players add #temp exp.counter_1 1

# If this slot has a piece, calculate its possible durability damage
execute if data storage expansion:temp player.armor[0].id run function expansion:spacesuits/integrity/check_piece

# If this slot doesn't have a piece, damage all other pieces
execute unless data storage expansion:temp player.armor[0].id run function expansion:spacesuits/integrity/missing_piece

# Repeat for other armor pieces
data modify storage expansion:temp player.armor append from storage expansion:temp player.armor[0]
data remove storage expansion:temp player.armor[0]
execute if score #temp exp.counter_1 matches ..3 run function expansion:spacesuits/integrity/iterate_over_armor