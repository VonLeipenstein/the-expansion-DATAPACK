# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/shoot/start
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/shoot/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# start animations
execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_start_l/play
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_start_r/play

# adds the functionality to be able to stop this loop
tag @s add exp.mech_action_toggle

# set this equal to the number of frames in the animation
scoreboard players set @s exp.mech_action_anim 20

# set a minimum duration for this ability
# not used for a player controlled mech, but for the bossfight
scoreboard players add @s exp.cooldown 200

# play sound
playsound expansion:mech.minigun.warmup ambient @a ~ ~ ~ 0.5
