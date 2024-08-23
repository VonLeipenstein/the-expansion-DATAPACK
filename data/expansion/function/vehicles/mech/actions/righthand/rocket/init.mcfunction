execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/rocket_shoot_r/play

# set this equal to the number of frames in the animation
scoreboard players set @s exp.mech_right_anim 40

scoreboard players reset #temp exp.unique_id
execute on passengers on passengers on passengers if entity @s[tag=exp.mech_pilot] at @s anchored eyes positioned ^ ^ ^4 summon marker run function expansion:vehicles/mech/actions/righthand/rocket/target/cast
execute store result entity @s ArmorItems[3].components.minecraft:custom_data.rocket_right_target long 1 run scoreboard players get #temp exp.unique_id

