# >>> generated function callers >>>
# Callers for expansion:projectiles/ship_blaster/tp_item
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:projectiles/ship_blaster/hit_block/digging (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

tp @s @p[tag=exp.inside_spaceship]
execute at @s run tp @s ~ ~1 ~
data merge entity @s {PickupDelay:0}