scoreboard players set @s aj.mech_legs.animation.walking.local_anim_time 0
tag @s remove aj.mech_legs.animation.walking
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.mech_legs.disable_command_keyframes
function animated_java:mech_legs/zzzzzzzz/animations/walking/tree/leaf_0
tag @s remove aj.mech_legs.disable_command_keyframes