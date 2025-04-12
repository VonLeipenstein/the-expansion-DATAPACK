# Copy a players armor to a storage
function expansion:utilities/copy_armor_to_storage

# Deal water damage to the suit
execute unless predicate expansion:armor/diver/set if function expansion:spacesuits/integrity/detect_water run function expansion:spacesuits/integrity/water_damage

# For each armor piece, check if it is resistant enough and if not damage it
scoreboard players reset #temp exp.counter_1
scoreboard players reset #temp exp.counter_2
function expansion:spacesuits/integrity/iterate_over_armor

# Apply accumulated damage to the equipment pieces, only damage expansion armor
execute if score #head exp.damage matches 1.. if items entity @s armor.head *[max_damage] if predicate expansion:armor/head run function expansion:spacesuits/integrity/damage/head
execute if score #chest exp.damage matches 1.. if items entity @s armor.chest *[max_damage] if predicate expansion:armor/chest run function expansion:spacesuits/integrity/damage/chest
execute if score #legs exp.damage matches 1.. if items entity @s armor.legs *[max_damage] if predicate expansion:armor/legs run function expansion:spacesuits/integrity/damage/legs
execute if score #feet exp.damage matches 1.. if items entity @s armor.feet *[max_damage] if predicate expansion:armor/feet run function expansion:spacesuits/integrity/damage/feet

# Calculate the new integrity percentage
function expansion:spacesuits/integrity/calculate

# Reset scores
scoreboard players reset #temp exp.counter_1
scoreboard players reset #value exp.suit_integrity
scoreboard players reset #max exp.suit_integrity

scoreboard players reset #head exp.damage
scoreboard players reset #chest exp.damage
scoreboard players reset #legs exp.damage
scoreboard players reset #feet exp.damage

# Reset storage
data remove storage expansion:temp armor