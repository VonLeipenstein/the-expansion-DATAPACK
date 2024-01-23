tag @s remove exp.mech_walking
tag @s remove exp.mech_walking_back

execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/pause_all