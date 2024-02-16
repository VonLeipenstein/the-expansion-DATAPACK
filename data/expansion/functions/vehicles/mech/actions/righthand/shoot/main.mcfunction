execute if score @s exp.mech_right_dur matches 1 run function expansion:vehicles/mech/actions/righthand/shoot/init

execute if score @s exp.mech_right_dur matches 20 on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_shooting_r/play

execute if entity @s[tag=exp.mech.action.right.stop] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function expansion:vehicles/mech/actions/righthand/shoot/stop