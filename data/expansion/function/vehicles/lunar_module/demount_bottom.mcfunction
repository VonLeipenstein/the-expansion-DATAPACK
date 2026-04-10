# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/demount_bottom
# Total callers: 0
# None found
# <<< generated function callers <<<

loot spawn ~ ~ ~ loot expansion:vehicles/module_bottom
playsound expansion:wrench.create block @a ~ ~ ~
execute on passengers run kill @s
kill @s