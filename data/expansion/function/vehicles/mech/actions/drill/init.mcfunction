# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/drill/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/drill/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/drill_start_l/play
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/drill_start_r/play

# adds the functionality to be able to stop this loop
tag @s add exp.mech_action_toggle

# set this equal to the number of frames in the animation
scoreboard players set @s exp.mech_action_anim 22
