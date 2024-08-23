# animation control
execute if score @s exp.mech_left_dur matches 1 run function expansion:vehicles/mech/actions/lefthand/shoot/init
execute if score @s exp.mech_left_anim matches 0 on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_shooting_l/play
execute if entity @s[tag=exp.mech.action.left.stop] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function expansion:vehicles/mech/actions/lefthand/shoot/stop
execute if entity @s[tag=exp.mech.action.left.stop] run scoreboard players set @s exp.mech_left_anim 16

scoreboard players operation #temp exp.mech_left_dur = @s exp.mech_left_dur
scoreboard players operation #temp exp.mech_left_dur %= #2 exp.const

execute if score #temp exp.mech_left_dur matches 0 if score @s exp.mech_left_dur matches 20.. on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^1.3 ^ ^3 rotated as @s summon marker run function expansion:vehicles/mech/actions/righthand/shoot/raycast/cast

# sound loop
scoreboard players operation #temp exp.mech_left_dur = @s exp.mech_left_dur
scoreboard players operation #temp exp.mech_left_dur += #14 exp.const
scoreboard players operation #temp exp.mech_left_dur %= #36 exp.const
execute if score #temp exp.mech_left_dur matches 0 if score @s exp.mech_left_dur matches 20.. if score @s exp.mech_left_id = @s exp.mech_right_id unless score @s exp.mech_right_dur matches 21.. run playsound expansion:mech.minigun.loop ambient @a ~ ~ ~ 0.5
execute if score #temp exp.mech_left_dur matches 0 if score @s exp.mech_left_dur matches 20.. unless score @s exp.mech_left_id = @s exp.mech_right_id run playsound expansion:mech.minigun.loop ambient @a ~ ~ ~ 0.5