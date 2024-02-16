scoreboard players set @s aj.mech_torso.animation.drill_stop_r.local_anim_time 0
tag @s remove aj.mech_torso.animation.drill_stop_r
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.mech_torso.disable_command_keyframes
function animated_java:mech_torso/zzzzzzzz/animations/drill_stop_r/tree/leaf_0
tag @s remove aj.mech_torso.disable_command_keyframes