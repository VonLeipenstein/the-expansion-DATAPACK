# >>> generated function callers >>>
# Callers for expansion:mechanics/gravity/remove
# Total callers: 7 from 7 source(s)
# Folder rule (function callers): 6/7 honored
# Sources:
# - function expansion:mechanics/gravity/europa (1 caller) [OK same-folder]
# - function expansion:mechanics/gravity/jupiter (1 caller) [OK same-folder]
# - function expansion:mechanics/gravity/mars (1 caller) [OK same-folder]
# - function expansion:mechanics/gravity/moon (1 caller) [OK same-folder]
# - function expansion:mechanics/gravity/remove_all (1 caller) [OK same-folder]
# - function expansion:mechanics/gravity/venus (1 caller) [OK same-folder]
# - function expansion:mechanics/gravity/zero/apply (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

attribute @s minecraft:gravity modifier remove 284591
attribute @s minecraft:safe_fall_distance modifier remove 284591

execute if entity @s[type=#expansion:attributeless,scores={exp.gravity_id=1..},nbt={NoGravity:1b}] run data merge entity @s {NoGravity:0b}

scoreboard players reset @s exp.gravity_id