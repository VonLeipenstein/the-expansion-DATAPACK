# >>> generated function callers >>>
# Callers for expansion:utilities/copy_armor_to_storage
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 0/3 honored
# Sources:
# - function expansion:items/thermometer/use (1 caller) [WARN side/down 3]
# - function expansion:spacesuits/extract_scores (1 caller) [WARN side/down 2]
# - function expansion:spacesuits/get_armor_modules/init_loop (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

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