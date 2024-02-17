execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/rocket_shoot_l/tween_play

scoreboard players reset #temp exp.unique_id
execute on passengers on passengers if entity @s[type=player] at @s anchored eyes positioned ^ ^ ^4 summon marker run function expansion:vehicles/mech/actions/righthand/rocket/target/cast
execute store result entity @s ArmorItems[3].tag.rocket_left_target long 1 run scoreboard players get #temp exp.unique_id
