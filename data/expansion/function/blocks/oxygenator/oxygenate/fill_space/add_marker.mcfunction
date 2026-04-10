# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/fill_space/add_marker
# Total callers: 8 from 3 source(s)
# Folder rule (function callers): 1/3 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/fill_space/scan_nearby_blocks (6 callers) [OK same-folder]
# - function expansion:blocks/oxygenator/oxygenate/scan/init/best_startpos (1 caller) [WARN side/down 3]
# - function expansion:blocks/oxygenator/oxygenate/scan/quick/add_first_marker (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

execute summon item_display run function expansion:blocks/oxygenator/oxygenate/fill_space/init_marker

#
scoreboard players remove @s exp.counter_1 1