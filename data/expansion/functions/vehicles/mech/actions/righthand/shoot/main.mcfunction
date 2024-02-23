# animation control
execute if score @s exp.mech_right_dur matches 1 run function expansion:vehicles/mech/actions/righthand/shoot/init
execute if score @s exp.mech_right_dur matches 20 on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_shooting_r/play
execute if entity @s[tag=exp.mech.action.right.stop] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function expansion:vehicles/mech/actions/righthand/shoot/stop

scoreboard players operation #temp exp.mech_right_dur = @s exp.mech_right_dur
scoreboard players operation #temp exp.mech_right_dur %= #2 exp.const

execute if score #temp exp.mech_right_dur matches 0 if score @s exp.mech_right_dur matches 20.. on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^-1.3 ^ ^3 rotated as @s summon marker run function expansion:vehicles/mech/actions/righthand/shoot/raycast/cast

# sound loop
scoreboard players operation #temp exp.mech_right_dur = @s exp.mech_right_dur
scoreboard players operation #temp exp.mech_right_dur += #14 exp.const
scoreboard players operation #temp exp.mech_right_dur %= #36 exp.const
execute if score #temp exp.mech_right_dur matches 0 if score @s exp.mech_right_dur matches 20.. run playsound expansion:mech.minigun.loop ambient @a ~ ~ ~ 0.5