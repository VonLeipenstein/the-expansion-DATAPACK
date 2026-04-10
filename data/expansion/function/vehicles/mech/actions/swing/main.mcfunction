# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/swing/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if score @s exp.mech_action_dur matches 1 run function expansion:vehicles/mech/actions/swing/init
execute if score @s exp.mech_action_dur matches 20 run tag @s add exp.mech_action_stop

execute if score @s exp.mech_action_dur matches 8..10 on vehicle on passengers if entity @s[tag=aj.mech_torso.root] rotated as @s positioned ^ ^ ^3 as @e[type=!#expansion:ignore,distance=..2.5] run damage @s 12
