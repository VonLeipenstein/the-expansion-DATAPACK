# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/scan/init/best_startpos
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/scan/init/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute unless data entity @s item.components."minecraft:custom_data".best_start_pos run return run function expansion:blocks/oxygenator/oxygenate/scan/init/random_startpos

function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker
data modify entity @e[type=item_display,distance=..0.01,tag=exp.oxygen_marker,limit=1] Pos set from entity @s item.components."minecraft:custom_data".best_start_pos