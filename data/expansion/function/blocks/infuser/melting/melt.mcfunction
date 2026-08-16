# >>> generated function callers >>>
# Callers for expansion:blocks/infuser/melting/melt
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/infuser/melting/melting (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if function expansion:blocks/infuser/melting/compare_output run return fail

execute if items block ~ ~ ~ container.7 * on passengers run function expansion:blocks/infuser/melting/add_product
execute unless items block ~ ~ ~ container.7 * on passengers run function expansion:blocks/infuser/melting/insert_product
execute on passengers run item replace entity @s container.0 with minecraft:air
