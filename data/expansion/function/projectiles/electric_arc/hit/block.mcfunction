# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/hit/block
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/electric_arc/hit/check (1 caller) [OK same-folder]
# <<< generated function callers <<<

#particle explosion ~ ~ ~ 0 0 0 0 1 force

execute if score @s exp.unique_id matches 5 positioned ~ ~1 ~ run particle minecraft:flash{color:-16711694}

return 1