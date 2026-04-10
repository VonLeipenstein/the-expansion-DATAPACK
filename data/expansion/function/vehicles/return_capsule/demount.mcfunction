# >>> generated function callers >>>
# Callers for expansion:vehicles/return_capsule/demount
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/return_capsule/click_detection/leftclick (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

execute as @p unless entity @s[gamemode=creative] run loot give @s loot expansion:vehicles/return_capsule
execute at @s run playsound block.metal.break block @a ~ ~ ~
execute on passengers run kill @s
kill @s