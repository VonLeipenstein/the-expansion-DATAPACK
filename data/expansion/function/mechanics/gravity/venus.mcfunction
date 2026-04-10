# >>> generated function callers >>>
# Callers for expansion:mechanics/gravity/venus
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mechanics/gravity/apply (1 caller) [OK same-folder]
# <<< generated function callers <<<

function expansion:mechanics/gravity/remove
attribute @s minecraft:gravity modifier add 284591 -0.09 add_multiplied_base
attribute @s minecraft:safe_fall_distance modifier add 284591 1.09 add_multiplied_base
attribute @s minecraft:fall_damage_multiplier modifier add 284591 -0.09 add_multiplied_base

scoreboard players operation @s exp.gravity_id = #venus exp.gravity_id