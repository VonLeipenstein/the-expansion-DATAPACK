# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/remove/slot_3
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/remove (1 caller) [OK above +1]
# <<< generated function callers <<<

# place a dummy item in the block
loot replace block ~ ~ ~ container.14 loot expansion:items/gui/filler

# Temporarily store a copy of the removed module so we can do some magic
data modify storage expansion:temp RemovedModule set from storage expansion:temp ModStorage[2]
function expansion:blocks/enhancer/upgrade/remove/effects

# copy the module from the equipment to the dummy item
data modify block ~ ~ ~ Items[{Slot:14b}] set from storage expansion:temp RemovedModule

# remove the equipment module data
data modify storage expansion:temp ModStorage[2] set value {}