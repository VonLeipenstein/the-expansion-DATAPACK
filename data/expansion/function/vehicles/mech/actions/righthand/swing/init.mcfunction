tag @s remove exp.mech.action.swing

execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/sword_swing_r/play

# set this equal to the number of frames in the animation
scoreboard players set @s exp.mech_right_anim 20