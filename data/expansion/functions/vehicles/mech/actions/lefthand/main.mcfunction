execute if score @s exp.mech_left_dur matches 1 on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_left/pause

execute if score @s exp.mech_left_id matches 0 run function expansion:vehicles/mech/actions/lefthand/punch/main
execute if score @s exp.mech_left_id matches 1 run function expansion:vehicles/mech/actions/lefthand/swing/main
execute if score @s exp.mech_left_id matches 2 run function expansion:vehicles/mech/actions/lefthand/shoot/main
execute if score @s exp.mech_left_id matches 3 run function expansion:vehicles/mech/actions/lefthand/rocket/main
execute if score @s exp.mech_left_id matches 4 run function expansion:vehicles/mech/actions/lefthand/drill/main

scoreboard players add @s exp.mech_left_dur 1

execute if entity @s[tag=exp.mech.action.left.stop] run function expansion:vehicles/mech/actions/lefthand/finish