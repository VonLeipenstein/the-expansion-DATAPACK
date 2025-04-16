# first, copy the entire player inventory to storage.
data modify storage expansion:temp equipment set from entity @s equipment

# copy the armor slots to another storage
data merge storage expansion:temp {armor:[{},{},{},{}]}
data modify storage expansion:temp armor[0] set from storage expansion:temp equipment.head
data modify storage expansion:temp armor[1] set from storage expansion:temp equipment.chest
data modify storage expansion:temp armor[2] set from storage expansion:temp equipment.legs
data modify storage expansion:temp armor[3] set from storage expansion:temp equipment.feet

# reset the inventory storage
data remove storage expansion:temp equipment