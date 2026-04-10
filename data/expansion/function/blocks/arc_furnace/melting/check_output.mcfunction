# >>> generated function callers >>>
# Callers for expansion:blocks/arc_furnace/melting/check_output
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/arc_furnace/melting/melting (1 caller) [OK same-folder]
# <<< generated function callers <<<

function expansion:blocks/arc_furnace/melting/compare_output

execute if items block ~ ~ ~ container.7 * if score @s exp.bool matches 0 run function expansion:blocks/arc_furnace/melting/start_melting
execute unless items block ~ ~ ~ container.7 * run return run function expansion:blocks/arc_furnace/melting/start_melting