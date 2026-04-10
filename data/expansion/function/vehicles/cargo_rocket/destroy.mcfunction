# >>> generated function callers >>>
# Callers for expansion:vehicles/cargo_rocket/destroy
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/cargo_rocket/click_detection/leftclick (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

execute at @p[tag=exp.clicked] run loot spawn ~ ~ ~ loot expansion:slot/head

execute on passengers run kill @s
kill @s