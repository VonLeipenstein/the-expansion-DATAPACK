# >>> generated function callers >>>
# Callers for expansion:blocks/rocket_parts/kill
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/rocket_parts/destroy (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:barrier
execute on passengers run kill @s
kill @s