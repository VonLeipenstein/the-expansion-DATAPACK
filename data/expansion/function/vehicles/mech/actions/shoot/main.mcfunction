# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/shoot/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# animation control
execute if entity @s[tag=exp.mech_action_stop] run return run function expansion:vehicles/mech/actions/shoot/stop
execute if score @s exp.mech_action_dur matches 1 run function expansion:vehicles/mech/actions/shoot/start

# shoot bullets, tag is added by AJ in animation
execute if entity @s[tag=exp.shoot] run function expansion:vehicles/mech/actions/shoot/init