# >>> generated function callers >>>
# Callers for expansion:vehicles/return_capsule/recycle
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:vehicles/return_capsule/click_detection/leftclick (1 caller) [WARN side/down 1]
# - function expansion:vehicles/return_capsule/click_detection/rightclick (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

loot spawn ~ ~1.65 ~ loot expansion:vehicles/return_capsule_recycle
advancement grant @p only expansion:progression/recycle_capsule
playsound expansion:wrench.create block @a ~ ~ ~
execute on passengers run kill @s
kill @s