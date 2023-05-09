scoreboard players add @s aj.mech_torso.animation.walking.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.mech_torso.animation.walking.local_anim_time
function zzz_mech_torso_internal:animations/walking/apply_frame_as_root
execute if score @s aj.mech_torso.animation.walking.local_anim_time matches 40.. run function zzz_mech_torso_internal:animations/walking/end