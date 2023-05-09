scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.mech_torso.animation.walking.local_anim_time 0
scoreboard players set @s aj.mech_torso.animation.walking.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function zzz_mech_torso_internal:animations/walking/tree/leaf_0
execute on passengers store result entity @s interpolation_duration int 1 run scoreboard players get $aj.default_interpolation_duration aj.i
tag @s add aj.mech_torso.animation.walking