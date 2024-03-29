execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_body/stop
execute unless score @s exp.mech_left_dur matches 1.. on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_left/stop
execute unless score @s exp.mech_right_dur matches 1.. on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_right/stop
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run scoreboard players set #tween_duration aj.i 10
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/idle/tween_play

execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/walking/stop
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_legs.root] run scoreboard players set #tween_duration aj.i 10
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/idle/tween_play

tag @s remove exp.mech_walking