# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/anim_control/stop_walking_backward
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/anim_control/stop_walking (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.left_arm_control] unless score @s exp.mech_action_dur matches 1.. on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_left/pause
execute on passengers if entity @s[tag=exp.right_arm_control] unless score @s exp.mech_action_dur matches 1.. on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_right/pause

execute on passengers if entity @s[tag=aj.mech_torso.root] run scoreboard players operation @s aj.walking_body.frame = @s aj.walking_backwards_body.frame
execute on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_body/pause

execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/walking_backwards/pause

tag @s remove exp.mech_walking
tag @s remove exp.mech_walking_backwards