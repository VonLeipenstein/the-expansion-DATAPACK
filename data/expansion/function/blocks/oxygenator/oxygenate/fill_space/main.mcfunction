# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/fill_space/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/scan/perform (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

scoreboard players remove @s exp.delay 1

# Expand new markers if the score is more than 1
execute if score @s exp.counter_1 matches 1.. run function expansion:blocks/oxygenator/oxygenate/fill_space/scan_nearby_blocks