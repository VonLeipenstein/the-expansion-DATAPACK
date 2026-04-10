# >>> generated function callers >>>
# Callers for expansion:mechanics/gravity/moon
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:mechanics/gravity/apply (1 caller) [OK same-folder]
# - function expansion:mobs/space_trader/insert_trades (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

function expansion:mechanics/gravity/remove
attribute @s minecraft:gravity modifier add 284591 -0.83 add_multiplied_base
attribute @s minecraft:safe_fall_distance modifier add 284591 6 add_multiplied_base
attribute @s minecraft:fall_damage_multiplier modifier add 284591 -0.83 add_multiplied_base

scoreboard players operation @s exp.gravity_id = #moon exp.gravity_id