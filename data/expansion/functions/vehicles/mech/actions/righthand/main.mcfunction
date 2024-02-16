execute if score @s exp.mech_right_dur matches 1 on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_right/pause

execute if score @s exp.mech_right_id matches 0 run function expansion:vehicles/mech/actions/righthand/punch/main
execute if score @s exp.mech_right_id matches 1 run function expansion:vehicles/mech/actions/righthand/swing/main
execute if score @s exp.mech_right_id matches 2 run function expansion:vehicles/mech/actions/righthand/shoot/main
execute if score @s exp.mech_right_id matches 3 run function expansion:vehicles/mech/actions/righthand/rocket/main
execute if score @s exp.mech_right_id matches 4 run function expansion:vehicles/mech/actions/righthand/drill/main

scoreboard players add @s exp.mech_right_dur 1

execute if entity @s[tag=exp.mech.action.right.stop] run function expansion:vehicles/mech/actions/righthand/finish