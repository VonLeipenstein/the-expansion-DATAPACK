tag @s remove exp.mech.action.swing
tag @s remove exp.mech.action.combo

execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/sword_swing_combo/tween_play

scoreboard players set @s exp.cooldown 30