# >>> generated function callers >>>
# Callers for expansion:blocks/arc_furnace/melting/melt
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/arc_furnace/melting/melting (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if function expansion:blocks/infuser/melting/compare_output run return run function expansion:blocks/arc_furnace/switch_model/turn_off

execute if items block ~ ~ ~ container.7 * on passengers run function expansion:blocks/arc_furnace/melting/add_product
execute unless items block ~ ~ ~ container.7 * on passengers run function expansion:blocks/arc_furnace/melting/insert_product
execute on passengers run item replace entity @s container.0 with minecraft:air
