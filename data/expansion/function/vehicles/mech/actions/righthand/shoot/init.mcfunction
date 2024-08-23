execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_start_r/play

# set this equal to the number of frames in the animation
scoreboard players set @s exp.mech_right_anim 20

playsound expansion:mech.minigun.warmup ambient @a ~ ~ ~ 0.5
