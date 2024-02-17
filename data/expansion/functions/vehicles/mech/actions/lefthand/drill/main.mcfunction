# animation control
execute if score @s exp.mech_left_dur matches 1 run function expansion:vehicles/mech/actions/lefthand/drill/init
execute if score @s exp.mech_left_dur matches 20 on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/drill_drill_l/play
execute if entity @s[tag=exp.mech.action.left.stop] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function expansion:vehicles/mech/actions/lefthand/drill/stop

# drilling terrain
scoreboard players operation #temp exp.mech_left_dur = @s exp.mech_left_dur
scoreboard players operation #temp exp.mech_left_dur %= #2 exp.const

execute if score #temp exp.mech_left_dur matches 0 if score @s exp.mech_left_dur matches 20.. run function expansion:vehicles/mech/actions/lefthand/drill/check