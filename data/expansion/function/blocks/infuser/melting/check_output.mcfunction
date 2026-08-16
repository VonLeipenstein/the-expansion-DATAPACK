# >>> generated function callers >>>
# Callers for expansion:blocks/infuser/melting/check_output
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/infuser/melting/melting (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if items block ~ ~ ~ container.7 * unless function expansion:blocks/infuser/melting/compare_output run function expansion:blocks/infuser/melting/start_melting
execute unless items block ~ ~ ~ container.7 * run return run function expansion:blocks/infuser/melting/start_melting