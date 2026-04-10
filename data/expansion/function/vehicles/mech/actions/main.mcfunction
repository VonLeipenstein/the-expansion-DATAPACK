# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/main
# Total callers: 2 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/inside (2 callers) [OK above +1]
# <<< generated function callers <<<

# prevent the action if the ammo is insufficient
execute if function expansion:vehicles/mech/actions/reload/check run return run function expansion:vehicles/mech/actions/reload/no_ammo

scoreboard players add @s exp.mech_action_dur 1

# stop the walking animation if an action starts
execute if score @s exp.mech_action_dur matches 1 run function expansion:vehicles/mech/anim_control/body/stop_walking

# runs during any actions
execute if score @s exp.mech_action_id matches 0 run function expansion:vehicles/mech/actions/punch/main
execute if score @s exp.mech_action_id matches 1 run function expansion:vehicles/mech/actions/swing/main
execute if score @s exp.mech_action_id matches 2 run function expansion:vehicles/mech/actions/shoot/main
execute if score @s exp.mech_action_id matches 3 run function expansion:vehicles/mech/actions/rocket/main
execute if score @s exp.mech_action_id matches 4 run function expansion:vehicles/mech/actions/drill/main
scoreboard players remove @s exp.mech_action_anim 1

# stop the animation if signalled
execute if entity @s[tag=exp.mech_action_stop] run function expansion:vehicles/mech/actions/finish
