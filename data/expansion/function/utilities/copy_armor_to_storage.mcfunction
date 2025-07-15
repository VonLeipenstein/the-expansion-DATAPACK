# return if the data is already present to prevent successive player nbt retrieval
execute if data storage expansion:temp player.armor run return fail

# first, copy the entire player inventory to storage.
data modify storage expansion:temp equipment set from entity @s equipment

# copy the armor slots to another storage
data merge storage expansion:temp {player:{armor:[{},{},{},{}]}}
data modify storage expansion:temp player.armor[0] set from storage expansion:temp equipment.head
data modify storage expansion:temp player.armor[1] set from storage expansion:temp equipment.chest
data modify storage expansion:temp player.armor[2] set from storage expansion:temp equipment.legs
data modify storage expansion:temp player.armor[3] set from storage expansion:temp equipment.feet

# reset the inventory storage
data remove storage expansion:temp equipment