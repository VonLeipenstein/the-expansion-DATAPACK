execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run scoreboard players set #tween_duration aj.i 5
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_body/tween_play
execute unless score @s exp.mech_left_dur matches 1.. on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_left/tween_play
execute unless score @s exp.mech_right_dur matches 1.. on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_right/tween_play

execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_legs.root] run scoreboard players set #tween_duration aj.i 5
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/walking_backwards/tween_play

tag @s add exp.mech_walking_back