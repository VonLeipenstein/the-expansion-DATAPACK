loot spawn ~ ~ ~ loot expansion:items/gui/filler
data modify entity @e[type=item,distance=..0.1,nbt={Item:{components:{"minecraft:custom_data":{gui_item:1b}}}},limit=1] Item set from storage expansion:temp save_upgrade
data remove storage expansion:temp save_upgrade