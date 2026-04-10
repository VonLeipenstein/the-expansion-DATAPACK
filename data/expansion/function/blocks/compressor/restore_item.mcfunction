# >>> generated function callers >>>
# Callers for expansion:blocks/compressor/restore_item
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/compressor/destroy (1 caller) [OK same-folder]
# <<< generated function callers <<<

# placeholder item
loot spawn ~ ~ ~ loot expansion:items/gui/filler
# copy data from displayed item to placeholder item
data modify entity @n[type=item,distance=..0.1] Item set from entity @n[type=minecraft:item_display,tag=exp.compressor.display] item
