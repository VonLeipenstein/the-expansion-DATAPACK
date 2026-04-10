# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/shoot/stop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/shoot/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# stop shooting animation
execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_shooting_l/stop
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_shooting_r/stop

# play stopping animation
execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_stop_l/play
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_stop_r/play
scoreboard players set @s exp.mech_action_anim 16

# set a cooldown (duration + cooldown) for using this arm again
# not used for a player controlled mech, but for the bossfight
scoreboard players add @s exp.cooldown 80

# sounds
tag @s remove exp.shoot
tag @s remove exp.shoot_left
tag @s remove exp.shoot_right