# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/titles/blockcap
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/scan/fails/blockcap (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

title @s subtitle {translate:"exp_screentxt_oxygen_blockcap"}

execute if score #temp exp.oxygen_max matches 1 run return run title @s title {translate:"exp_screentxt_oxygen_pressurestop"}
title @s title {translate:"exp_screentxt_oxygen_pressurefail"}