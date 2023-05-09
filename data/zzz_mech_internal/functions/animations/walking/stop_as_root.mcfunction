scoreboard players set @s aj.mech.animation.walking.local_anim_time 0
tag @s remove aj.mech.animation.walking
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.mech.disable_command_keyframes
function zzz_mech_internal:animations/walking/tree/leaf_0
tag @s remove aj.mech.disable_command_keyframes