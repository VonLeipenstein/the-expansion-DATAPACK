# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/anim_control/body/right/find_anim_after_action
# Total callers: 5 from 5 source(s)
# Folder rule (function callers): 0/5 honored
# Sources:
# - function animated_java:mech_torso/animations/drill_stop_r/zzz/frames/10_root_commands (1 caller) [WARN side/down 12]
# - function animated_java:mech_torso/animations/empty_punch1_r/zzz/frames/20_root_commands (1 caller) [WARN side/down 12]
# - function animated_java:mech_torso/animations/gatling_stop_r/zzz/frames/10_root_commands (1 caller) [WARN side/down 12]
# - function animated_java:mech_torso/animations/rocket_shoot_r/zzz/frames/40_root_commands (1 caller) [WARN side/down 12]
# - function animated_java:mech_torso/animations/sword_swing_r/zzz/frames/20_root_commands (1 caller) [WARN side/down 12]
# <<< generated function callers <<<

# RAN FROM AJ
# finds the animation to run after completing an action
# So it may continue with a walking animation, idle animation, flying animation

execute on vehicle if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/body/right/resume_walking