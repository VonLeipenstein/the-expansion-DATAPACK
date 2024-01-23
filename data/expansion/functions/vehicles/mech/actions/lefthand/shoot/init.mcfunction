tag @s remove exp.mech.action.shoot

execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/blaster_shoot_l/tween_play

scoreboard players set @s exp.cooldown 40