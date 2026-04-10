# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/anim_control/body/stop_walking
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/main (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

# Runs as one of the arm controller passengers of the mech
execute if entity @s[tag=exp.left_arm_control] on vehicle if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/body/left/stop_walking

execute if entity @s[tag=exp.right_arm_control] on vehicle if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/body/right/stop_walking