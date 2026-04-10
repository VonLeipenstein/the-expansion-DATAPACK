# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/propulsion/rotate_legs
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/propulsion/drive (1 caller) [OK same-folder]
# <<< generated function callers <<<

# store the movement rotation into an entity rotation so the mech legs know where to turn to
# revert for walking backwards as we have a backwards animation
execute on vehicle unless score @s exp.yaw matches -90..90 run scoreboard players add #angle exp.math 180
execute store result entity @s Rotation[0] float 1 run scoreboard players get #angle exp.math
execute rotated as @s on vehicle on passengers if entity @s[tag=aj.mech_legs.root] positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0
