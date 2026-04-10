# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/drill/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# animation control
execute if entity @s[tag=exp.mech_action_stop] run return run function expansion:vehicles/mech/actions/drill/stop
execute if score @s exp.mech_action_dur matches 1 run function expansion:vehicles/mech/actions/drill/init

# drilling terrain
execute if predicate expansion:periodic/2 if score @s exp.mech_action_dur matches 20.. run function expansion:vehicles/mech/actions/drill/check

# sound loop
execute if predicate expansion:periodic/40 run playsound expansion:mech.drill.loop ambient @a ~ ~ ~ 0.2