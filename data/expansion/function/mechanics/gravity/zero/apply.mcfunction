# >>> generated function callers >>>
# Callers for expansion:mechanics/gravity/zero/apply
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:mechanics/gravity/apply (1 caller) [OK above +1]
# - function expansion:mechanics/gravity/zero/float (1 caller) [OK same-folder]
# <<< generated function callers <<<

function expansion:mechanics/gravity/remove
attribute @s minecraft:gravity modifier add 284591 -1 add_multiplied_base
attribute @s minecraft:safe_fall_distance modifier add 284591 500 add_value

execute if entity @s[type=#expansion:attributeless] run data merge entity @s {NoGravity:1b}

scoreboard players operation @s exp.gravity_id = #zero exp.gravity_id
