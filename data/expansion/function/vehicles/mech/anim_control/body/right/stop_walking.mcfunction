# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/anim_control/body/right/stop_walking
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/anim_control/body/stop_walking (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if entity @s[tag=exp.mech_walking_forwards] on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_right/stop
execute if entity @s[tag=exp.mech_walking_backwards] on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_right/stop