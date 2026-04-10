# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/drill/stop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/drill/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# stop loop animation
execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/drill_drill_l/stop
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/drill_drill_r/stop

# start stop animation
execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/drill_stop_l/play
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/drill_stop_r/play
scoreboard players set @s exp.mech_action_anim 10

# sound
stopsound @a[distance=..5] ambient expansion:mech.drill.loop