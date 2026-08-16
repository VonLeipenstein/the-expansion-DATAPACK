# >>> generated function callers >>>
# Callers for expansion:blocks/arc_furnace/melting/start_melting
# Total callers: 2 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/arc_furnace/melting/check_output (2 callers) [OK same-folder]
# <<< generated function callers <<<

item modify block ~ ~ ~ container.1 expansion:utility/reduce_count

execute unless entity @s[tag=exp.smelting] run function expansion:blocks/arc_furnace/switch_model/turn_on