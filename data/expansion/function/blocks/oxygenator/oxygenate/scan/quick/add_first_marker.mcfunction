# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/scan/quick/add_first_marker
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/scan/quick/hit (1 caller) [OK same-folder]
# <<< generated function callers <<<

function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker
data modify entity @s item.components."minecraft:custom_data".start_pos set from entity @e[type=item_display,distance=..0.01,tag=exp.oxygen_marker,limit=1] Pos