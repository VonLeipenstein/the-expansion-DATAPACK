execute unless score @s exp.mech_left_dur matches 1.. on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_left/pause
execute unless score @s exp.mech_right_dur matches 1.. on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_right/pause
execute unless score @s exp.mech_left_dur matches 1.. on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_left/pause
execute unless score @s exp.mech_right_dur matches 1.. on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_right/pause

execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_body/pause
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_body/pause
#execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/idle/play

execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/walking_backwards/pause
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/walking/pause
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/idle/tween {to_frame: 0, duration: 5}

tag @s remove exp.mech_walking
tag @s remove exp.mech_walking_backwards
