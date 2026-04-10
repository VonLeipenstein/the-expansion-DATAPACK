# >>> generated function callers >>>
# Callers for expansion:mechanics/gravity/zero/ascend
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mechanics/gravity/zero/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s add exp.gravity_ascending
tag @s remove exp.gravity_descending

function expansion:mechanics/gravity/zero/remove_movement_modifier
attribute @s minecraft:gravity modifier add 28458 -0.1 add_multiplied_base