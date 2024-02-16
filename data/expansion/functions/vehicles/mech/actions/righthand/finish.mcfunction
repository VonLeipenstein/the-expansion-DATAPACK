tag @s remove exp.mech.action.right
tag @s remove exp.mech.action.right.stop

scoreboard players set @s exp.mech_right_dur 0

execute if entity @s[tag=exp.mech_walking] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run scoreboard players operation @s aj.mech_torso.animation.walking_right.local_anim_time = @s aj.mech_torso.animation.walking_body.local_anim_time
execute if entity @s[tag=exp.mech_walking] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_right/tween_resume

execute if entity @s[tag=exp.mech_walking_backwards] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run scoreboard players operation @s aj.mech_torso.animation.walking_backwards_right.local_anim_time = @s aj.mech_torso.animation.walking_backwards_body.local_anim_time
execute if entity @s[tag=exp.mech_walking_backwards] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_right/resume