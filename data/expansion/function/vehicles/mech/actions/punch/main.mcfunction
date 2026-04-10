# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/punch/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if score @s exp.mech_action_dur matches 1 run function expansion:vehicles/mech/actions/punch/init

execute if score @s exp.mech_action_dur matches 20 run tag @s add exp.mech_action_stop