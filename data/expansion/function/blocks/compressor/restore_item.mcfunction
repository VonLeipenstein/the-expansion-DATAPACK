# placeholder item
loot spawn ~ ~ ~ loot expansion:items/gui/filler
# copy data from displayed item to placeholder item
data modify entity @n[type=item,distance=..0.1] Item set from entity @n[type=minecraft:item_display,tag=exp.compressor_display] item
