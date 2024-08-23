# animation control
execute if score @s exp.mech_right_dur matches 1 run function expansion:vehicles/mech/actions/righthand/drill/init
execute if score @s exp.mech_right_anim matches 0 on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/drill_drill_r/play
execute if entity @s[tag=exp.mech.action.right.stop] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function expansion:vehicles/mech/actions/righthand/drill/stop
execute if entity @s[tag=exp.mech.action.right.stop] run scoreboard players set @s exp.mech_right_anim 10

# drilling terrain
scoreboard players operation #temp exp.mech_right_dur = @s exp.mech_right_dur
scoreboard players operation #temp exp.mech_right_dur %= #2 exp.const

execute if score #temp exp.mech_right_dur matches 0 if score @s exp.mech_right_dur matches 20.. run function expansion:vehicles/mech/actions/righthand/drill/check


# sound loop
scoreboard players operation #temp exp.mech_right_dur = @s exp.mech_right_dur
scoreboard players operation #temp exp.mech_right_dur %= #40 exp.const
execute if score #temp exp.mech_right_dur matches 0 run playsound expansion:mech.drill.loop ambient @a ~ ~ ~ 0.2