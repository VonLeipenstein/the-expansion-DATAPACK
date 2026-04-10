# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/recycle
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/lunar_module/bottom/interact (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

loot spawn ~ ~ ~ loot expansion:vehicles/module_bottom_recycle
playsound expansion:wrench.create block @a ~ ~ ~
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s