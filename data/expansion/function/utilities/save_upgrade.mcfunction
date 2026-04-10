# >>> generated function callers >>>
# Callers for expansion:utilities/save_upgrade
# Total callers: 6 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:vehicles/buggy/dismantle (2 callers) [WARN side/down 3]
# - function expansion:vehicles/spaceship/dismantle (4 callers) [WARN side/down 3]
# <<< generated function callers <<<

loot spawn ~ ~ ~ loot expansion:items/gui/filler
data modify entity @e[type=item,distance=..0.1,nbt={Item:{components:{"minecraft:custom_data":{gui_item:1b}}}},limit=1] Item set from storage expansion:temp save_upgrade
data remove storage expansion:temp save_upgrade