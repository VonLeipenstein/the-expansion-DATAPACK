execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/pause_all
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run scoreboard players set #tween_duration aj.i 1


execute if entity @s[tag=exp.mech.action.combo] run function expansion:vehicles/mech/actions/combo/init

execute if entity @s[tag=exp.mech.action.right] run function expansion:vehicles/mech/actions/righthand/init

execute if entity @s[tag=exp.mech.action.left] run function expansion:vehicles/mech/actions/lefthand/init
